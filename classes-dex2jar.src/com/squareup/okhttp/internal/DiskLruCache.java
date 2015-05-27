package com.squareup.okhttp.internal;

import com.squareup.okhttp.internal.io.FileSystem;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import o.uh;
import o.up;
import o.uz;
import o.va;

public final class DiskLruCache
  implements Closeable
{
  static final long ANY_SEQUENCE_NUMBER = -1L;
  private static final String CLEAN = "CLEAN";
  private static final String DIRTY = "DIRTY";
  static final String JOURNAL_FILE = "journal";
  static final String JOURNAL_FILE_BACKUP = "journal.bkp";
  static final String JOURNAL_FILE_TEMP = "journal.tmp";
  static final Pattern LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,120}");
  static final String MAGIC = "libcore.io.DiskLruCache";
  private static final uz NULL_SINK = new DiskLruCache.4();
  private static final String READ = "READ";
  private static final String REMOVE = "REMOVE";
  static final String VERSION_1 = "1";
  private final int appVersion;
  private final Runnable cleanupRunnable = new DiskLruCache.1(this);
  private boolean closed;
  private final File directory;
  private final Executor executor;
  private final FileSystem fileSystem;
  private boolean hasJournalErrors;
  private boolean initialized;
  private final File journalFile;
  private final File journalFileBackup;
  private final File journalFileTmp;
  private uh journalWriter;
  private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap(0, 0.75F, true);
  private long maxSize;
  private long nextSequenceNumber = 0L;
  private int redundantOpCount;
  private long size = 0L;
  private final int valueCount;
  
  static
  {
    boolean bool;
    if (!DiskLruCache.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    }
    $assertionsDisabled = bool;
  }
  
  DiskLruCache(FileSystem paramFileSystem, File paramFile, int paramInt1, int paramInt2, long paramLong, Executor paramExecutor)
  {
    this.fileSystem = paramFileSystem;
    this.directory = paramFile;
    this.appVersion = paramInt1;
    this.journalFile = new File(paramFile, "journal");
    this.journalFileTmp = new File(paramFile, "journal.tmp");
    this.journalFileBackup = new File(paramFile, "journal.bkp");
    this.valueCount = paramInt2;
    this.maxSize = paramLong;
    this.executor = paramExecutor;
  }
  
  private void checkNotClosed()
  {
    try
    {
      if (isClosed()) {
        throw new IllegalStateException("cache is closed");
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void completeEdit(Editor paramEditor, boolean paramBoolean)
  {
    for (;;)
    {
      Entry localEntry;
      int i;
      long l1;
      try
      {
        localEntry = paramEditor.entry;
        if (localEntry.currentEditor != paramEditor) {
          throw new IllegalStateException();
        }
        if ((!paramBoolean) || (localEntry.readable)) {
          break label461;
        }
        i = 0;
        if (i >= this.valueCount) {
          break label461;
        }
        if (paramEditor.written[i] == 0)
        {
          paramEditor.abort();
          throw new IllegalStateException("Newly created entry didn't create value for index " + i);
        }
        if (this.fileSystem.exists(localEntry.dirtyFiles[i])) {
          break label454;
        }
        paramEditor.abort();
        return;
      }
      finally {}
      if (i < this.valueCount)
      {
        paramEditor = localEntry.dirtyFiles[i];
        if (paramBoolean)
        {
          if (this.fileSystem.exists(paramEditor))
          {
            File localFile = localEntry.cleanFiles[i];
            this.fileSystem.rename(paramEditor, localFile);
            l1 = localEntry.lengths[i];
            long l2 = this.fileSystem.size(localFile);
            localEntry.lengths[i] = l2;
            this.size = (this.size - l1 + l2);
          }
        }
        else {
          this.fileSystem.delete(paramEditor);
        }
      }
      else
      {
        this.redundantOpCount += 1;
        Entry.access$902(localEntry, null);
        if ((localEntry.readable | paramBoolean))
        {
          Entry.access$802(localEntry, true);
          this.journalWriter.ﹰ("CLEAN").ɟ(32);
          this.journalWriter.ﹰ(localEntry.key);
          localEntry.writeLengths(this.journalWriter);
          this.journalWriter.ɟ(10);
          if (paramBoolean)
          {
            l1 = this.nextSequenceNumber;
            this.nextSequenceNumber = (1L + l1);
            Entry.access$1602(localEntry, l1);
          }
        }
        else
        {
          this.lruEntries.remove(localEntry.key);
          this.journalWriter.ﹰ("REMOVE").ɟ(32);
          this.journalWriter.ﹰ(localEntry.key);
          this.journalWriter.ɟ(10);
        }
        this.journalWriter.flush();
        if ((this.size > this.maxSize) || (journalRebuildRequired())) {
          this.executor.execute(this.cleanupRunnable);
        }
        return;
        label454:
        i += 1;
        continue;
        label461:
        i = 0;
        continue;
      }
      i += 1;
    }
  }
  
  public static DiskLruCache create(FileSystem paramFileSystem, File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("valueCount <= 0");
    }
    return new DiskLruCache(paramFileSystem, paramFile, paramInt1, paramInt2, paramLong, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp DiskLruCache", true)));
  }
  
  private Editor edit(String paramString, long paramLong)
  {
    try
    {
      initialize();
      checkNotClosed();
      validateKey(paramString);
      Entry localEntry2 = (Entry)this.lruEntries.get(paramString);
      if ((paramLong != -1L) && ((localEntry2 == null) || (localEntry2.sequenceNumber != paramLong))) {
        return null;
      }
      if ((localEntry2 != null) && (localEntry2.currentEditor != null)) {
        return null;
      }
      this.journalWriter.ﹰ("DIRTY").ɟ(32).ﹰ(paramString).ɟ(10);
      this.journalWriter.flush();
      if (this.hasJournalErrors) {
        return null;
      }
      Entry localEntry1 = localEntry2;
      if (localEntry2 == null)
      {
        localEntry1 = new Entry(paramString, null);
        this.lruEntries.put(paramString, localEntry1);
      }
      paramString = new Editor(localEntry1, null);
      Entry.access$902(localEntry1, paramString);
      return paramString;
    }
    finally {}
  }
  
  private boolean journalRebuildRequired()
  {
    return (this.redundantOpCount >= 2000) && (this.redundantOpCount >= this.lruEntries.size());
  }
  
  private uh newJournalWriter()
  {
    return up.ˊ(new DiskLruCache.2(this, this.fileSystem.appendingSink(this.journalFile)));
  }
  
  private void processJournal()
  {
    this.fileSystem.delete(this.journalFileTmp);
    Iterator localIterator = this.lruEntries.values().iterator();
    while (localIterator.hasNext())
    {
      Entry localEntry = (Entry)localIterator.next();
      int i;
      if (localEntry.currentEditor == null)
      {
        i = 0;
        while (i < this.valueCount)
        {
          this.size += localEntry.lengths[i];
          i += 1;
        }
      }
      else
      {
        Entry.access$902(localEntry, null);
        i = 0;
        while (i < this.valueCount)
        {
          this.fileSystem.delete(localEntry.cleanFiles[i]);
          this.fileSystem.delete(localEntry.dirtyFiles[i]);
          i += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  /* Error */
  private void readJournal()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 126	com/squareup/okhttp/internal/DiskLruCache:fileSystem	Lcom/squareup/okhttp/internal/io/FileSystem;
    //   4: aload_0
    //   5: getfield 137	com/squareup/okhttp/internal/DiskLruCache:journalFile	Ljava/io/File;
    //   8: invokeinterface 430 2 0
    //   13: invokestatic 434	o/up:ˋ	(Lo/va;)Lo/ui;
    //   16: astore_2
    //   17: aload_2
    //   18: invokeinterface 439 1 0
    //   23: astore_3
    //   24: aload_2
    //   25: invokeinterface 439 1 0
    //   30: astore 4
    //   32: aload_2
    //   33: invokeinterface 439 1 0
    //   38: astore 5
    //   40: aload_2
    //   41: invokeinterface 439 1 0
    //   46: astore 6
    //   48: aload_2
    //   49: invokeinterface 439 1 0
    //   54: astore 7
    //   56: ldc 40
    //   58: aload_3
    //   59: invokevirtual 445	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   62: ifeq +54 -> 116
    //   65: ldc 49
    //   67: aload 4
    //   69: invokevirtual 445	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   72: ifeq +44 -> 116
    //   75: aload_0
    //   76: getfield 130	com/squareup/okhttp/internal/DiskLruCache:appVersion	I
    //   79: invokestatic 450	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   82: aload 5
    //   84: invokevirtual 445	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   87: ifeq +29 -> 116
    //   90: aload_0
    //   91: getfield 143	com/squareup/okhttp/internal/DiskLruCache:valueCount	I
    //   94: invokestatic 450	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   97: aload 6
    //   99: invokevirtual 445	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   102: ifeq +14 -> 116
    //   105: ldc_w 452
    //   108: aload 7
    //   110: invokevirtual 445	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   113: ifne +70 -> 183
    //   116: new 454	java/io/IOException
    //   119: dup
    //   120: new 234	java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial 235	java/lang/StringBuilder:<init>	()V
    //   127: ldc_w 456
    //   130: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_3
    //   134: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: ldc_w 458
    //   140: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: aload 4
    //   145: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: ldc_w 458
    //   151: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: aload 6
    //   156: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: ldc_w 458
    //   162: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: aload 7
    //   167: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: ldc_w 460
    //   173: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 248	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: invokespecial 461	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   182: athrow
    //   183: iconst_0
    //   184: istore_1
    //   185: aload_0
    //   186: aload_2
    //   187: invokeinterface 439 1 0
    //   192: invokespecial 464	com/squareup/okhttp/internal/DiskLruCache:readJournalLine	(Ljava/lang/String;)V
    //   195: iload_1
    //   196: iconst_1
    //   197: iadd
    //   198: istore_1
    //   199: goto -14 -> 185
    //   202: astore_3
    //   203: aload_0
    //   204: iload_1
    //   205: aload_0
    //   206: getfield 115	com/squareup/okhttp/internal/DiskLruCache:lruEntries	Ljava/util/LinkedHashMap;
    //   209: invokevirtual 384	java/util/LinkedHashMap:size	()I
    //   212: isub
    //   213: putfield 198	com/squareup/okhttp/internal/DiskLruCache:redundantOpCount	I
    //   216: aload_2
    //   217: invokeinterface 467 1 0
    //   222: ifne +10 -> 232
    //   225: aload_0
    //   226: invokespecial 194	com/squareup/okhttp/internal/DiskLruCache:rebuildJournal	()V
    //   229: goto +11 -> 240
    //   232: aload_0
    //   233: aload_0
    //   234: invokespecial 469	com/squareup/okhttp/internal/DiskLruCache:newJournalWriter	()Lo/uh;
    //   237: putfield 286	com/squareup/okhttp/internal/DiskLruCache:journalWriter	Lo/uh;
    //   240: aload_2
    //   241: invokestatic 473	com/squareup/okhttp/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   244: return
    //   245: astore_3
    //   246: aload_2
    //   247: invokestatic 473	com/squareup/okhttp/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   250: aload_3
    //   251: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	252	0	this	DiskLruCache
    //   184	29	1	i	int
    //   16	231	2	localui	o.ui
    //   23	111	3	str1	String
    //   202	1	3	localEOFException	java.io.EOFException
    //   245	6	3	localObject	Object
    //   30	114	4	str2	String
    //   38	45	5	str3	String
    //   46	109	6	str4	String
    //   54	112	7	str5	String
    // Exception table:
    //   from	to	target	type
    //   185	195	202	java/io/EOFException
    //   17	116	245	finally
    //   116	183	245	finally
    //   185	195	245	finally
    //   203	229	245	finally
    //   232	240	245	finally
  }
  
  private void readJournalLine(String paramString)
  {
    int i = paramString.indexOf(' ');
    if (i == -1) {
      throw new IOException("unexpected journal line: " + paramString);
    }
    int j = i + 1;
    int k = paramString.indexOf(' ', j);
    Object localObject1;
    if (k == -1)
    {
      localObject2 = paramString.substring(j);
      localObject1 = localObject2;
      if (i == "REMOVE".length())
      {
        localObject1 = localObject2;
        if (paramString.startsWith("REMOVE")) {
          this.lruEntries.remove(localObject2);
        }
      }
    }
    else
    {
      localObject1 = paramString.substring(j, k);
    }
    Entry localEntry = (Entry)this.lruEntries.get(localObject1);
    Object localObject2 = localEntry;
    if (localEntry == null)
    {
      localObject2 = new Entry((String)localObject1, null);
      this.lruEntries.put(localObject1, localObject2);
    }
    if ((k != -1) && (i == "CLEAN".length()) && (paramString.startsWith("CLEAN")))
    {
      paramString = paramString.substring(k + 1).split(" ");
      Entry.access$802((Entry)localObject2, true);
      Entry.access$902((Entry)localObject2, null);
      ((Entry)localObject2).setLengths(paramString);
      return;
    }
    if ((k == -1) && (i == "DIRTY".length()) && (paramString.startsWith("DIRTY")))
    {
      Entry.access$902((Entry)localObject2, new Editor((Entry)localObject2, null));
      return;
    }
    if ((k == -1) && (i == "READ".length()) && (paramString.startsWith("READ"))) {
      return;
    }
    throw new IOException("unexpected journal line: " + paramString);
  }
  
  private void rebuildJournal()
  {
    try
    {
      if (this.journalWriter != null) {
        this.journalWriter.close();
      }
      uh localuh = up.ˊ(this.fileSystem.sink(this.journalFileTmp));
      try
      {
        localuh.ﹰ("libcore.io.DiskLruCache").ɟ(10);
        localuh.ﹰ("1").ɟ(10);
        localuh.ʲ(this.appVersion).ɟ(10);
        localuh.ʲ(this.valueCount).ɟ(10);
        localuh.ɟ(10);
        Iterator localIterator = this.lruEntries.values().iterator();
        while (localIterator.hasNext())
        {
          Entry localEntry = (Entry)localIterator.next();
          if (localEntry.currentEditor != null)
          {
            localuh.ﹰ("DIRTY").ɟ(32);
            localuh.ﹰ(localEntry.key);
            localuh.ɟ(10);
          }
          else
          {
            localuh.ﹰ("CLEAN").ɟ(32);
            localuh.ﹰ(localEntry.key);
            localEntry.writeLengths(localuh);
            localuh.ɟ(10);
          }
        }
      }
      finally
      {
        localuh.close();
      }
      if (this.fileSystem.exists(this.journalFile)) {
        this.fileSystem.rename(this.journalFile, this.journalFileBackup);
      }
      this.fileSystem.rename(this.journalFileTmp, this.journalFile);
      this.fileSystem.delete(this.journalFileBackup);
      this.journalWriter = newJournalWriter();
      this.hasJournalErrors = false;
      return;
    }
    finally {}
  }
  
  private boolean removeEntry(Entry paramEntry)
  {
    if (paramEntry.currentEditor != null) {
      Editor.access$1902(paramEntry.currentEditor, true);
    }
    int i = 0;
    while (i < this.valueCount)
    {
      this.fileSystem.delete(paramEntry.cleanFiles[i]);
      this.size -= paramEntry.lengths[i];
      paramEntry.lengths[i] = 0L;
      i += 1;
    }
    this.redundantOpCount += 1;
    this.journalWriter.ﹰ("REMOVE").ɟ(32).ﹰ(paramEntry.key).ɟ(10);
    this.lruEntries.remove(paramEntry.key);
    if (journalRebuildRequired()) {
      this.executor.execute(this.cleanupRunnable);
    }
    return true;
  }
  
  private void trimToSize()
  {
    while (this.size > this.maxSize) {
      removeEntry((Entry)this.lruEntries.values().iterator().next());
    }
  }
  
  private void validateKey(String paramString)
  {
    if (!LEGAL_KEY_PATTERN.matcher(paramString).matches()) {
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + paramString + "\"");
    }
  }
  
  public void close()
  {
    for (;;)
    {
      int i;
      try
      {
        if ((!this.initialized) || (this.closed))
        {
          this.closed = true;
          return;
        }
        Entry[] arrayOfEntry = (Entry[])this.lruEntries.values().toArray(new Entry[this.lruEntries.size()]);
        int j = arrayOfEntry.length;
        i = 0;
        if (i < j)
        {
          Entry localEntry = arrayOfEntry[i];
          if (localEntry.currentEditor != null) {
            localEntry.currentEditor.abort();
          }
        }
        else
        {
          trimToSize();
          this.journalWriter.close();
          this.journalWriter = null;
          this.closed = true;
          return;
        }
      }
      finally {}
      i += 1;
    }
  }
  
  public void delete()
  {
    close();
    this.fileSystem.deleteContents(this.directory);
  }
  
  public Editor edit(String paramString)
  {
    return edit(paramString, -1L);
  }
  
  public void evictAll()
  {
    try
    {
      initialize();
      Entry[] arrayOfEntry = (Entry[])this.lruEntries.values().toArray(new Entry[this.lruEntries.size()]);
      int j = arrayOfEntry.length;
      int i = 0;
      while (i < j)
      {
        removeEntry(arrayOfEntry[i]);
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void flush()
  {
    try
    {
      if (!this.initialized) {
        return;
      }
      checkNotClosed();
      trimToSize();
      this.journalWriter.flush();
      return;
    }
    finally {}
  }
  
  public Snapshot get(String paramString)
  {
    try
    {
      initialize();
      checkNotClosed();
      validateKey(paramString);
      Object localObject = (Entry)this.lruEntries.get(paramString);
      if ((localObject == null) || (!((Entry)localObject).readable)) {
        return null;
      }
      localObject = ((Entry)localObject).snapshot();
      if (localObject == null) {
        return null;
      }
      this.redundantOpCount += 1;
      this.journalWriter.ﹰ("READ").ɟ(32).ﹰ(paramString).ɟ(10);
      if (journalRebuildRequired()) {
        this.executor.execute(this.cleanupRunnable);
      }
      return localObject;
    }
    finally {}
  }
  
  public File getDirectory()
  {
    return this.directory;
  }
  
  public long getMaxSize()
  {
    try
    {
      long l = this.maxSize;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  void initialize()
  {
    assert (Thread.holdsLock(this));
    if (this.initialized) {
      return;
    }
    if (this.fileSystem.exists(this.journalFileBackup)) {
      if (this.fileSystem.exists(this.journalFile)) {
        this.fileSystem.delete(this.journalFileBackup);
      } else {
        this.fileSystem.rename(this.journalFileBackup, this.journalFile);
      }
    }
    if (this.fileSystem.exists(this.journalFile)) {
      try
      {
        readJournal();
        processJournal();
        this.initialized = true;
        return;
      }
      catch (IOException localIOException)
      {
        Platform.get().logW("DiskLruCache " + this.directory + " is corrupt: " + localIOException.getMessage() + ", removing");
        delete();
        this.closed = false;
      }
    }
    rebuildJournal();
    this.initialized = true;
  }
  
  public boolean isClosed()
  {
    try
    {
      boolean bool = this.closed;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean remove(String paramString)
  {
    try
    {
      initialize();
      checkNotClosed();
      validateKey(paramString);
      paramString = (Entry)this.lruEntries.get(paramString);
      if (paramString == null) {
        return false;
      }
      boolean bool = removeEntry(paramString);
      return bool;
    }
    finally {}
  }
  
  public void setMaxSize(long paramLong)
  {
    try
    {
      this.maxSize = paramLong;
      if (this.initialized) {
        this.executor.execute(this.cleanupRunnable);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long size()
  {
    try
    {
      initialize();
      long l = this.size;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Iterator<Snapshot> snapshots()
  {
    try
    {
      initialize();
      DiskLruCache.3 local3 = new DiskLruCache.3(this);
      return local3;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final class Editor
  {
    private boolean committed;
    private final DiskLruCache.Entry entry;
    private boolean hasErrors;
    private final boolean[] written;
    
    private Editor(DiskLruCache.Entry paramEntry)
    {
      this.entry = paramEntry;
      if (DiskLruCache.Entry.access$800(paramEntry)) {
        this$1 = null;
      } else {
        this$1 = new boolean[DiskLruCache.this.valueCount];
      }
      this.written = DiskLruCache.this;
    }
    
    public void abort()
    {
      synchronized (DiskLruCache.this)
      {
        DiskLruCache.this.completeEdit(this, false);
        return;
      }
    }
    
    public void abortUnlessCommitted()
    {
      synchronized (DiskLruCache.this)
      {
        boolean bool = this.committed;
        if (!bool) {
          try
          {
            DiskLruCache.this.completeEdit(this, false);
          }
          catch (IOException localIOException) {}
        }
        return;
      }
    }
    
    public void commit()
    {
      synchronized (DiskLruCache.this)
      {
        if (this.hasErrors)
        {
          DiskLruCache.this.completeEdit(this, false);
          DiskLruCache.this.removeEntry(this.entry);
        }
        else
        {
          DiskLruCache.this.completeEdit(this, true);
        }
        this.committed = true;
        return;
      }
    }
    
    public uz newSink(int paramInt)
    {
      synchronized (DiskLruCache.this)
      {
        if (DiskLruCache.Entry.access$900(this.entry) != this) {
          throw new IllegalStateException();
        }
        if (!DiskLruCache.Entry.access$800(this.entry)) {
          this.written[paramInt] = true;
        }
        Object localObject1 = DiskLruCache.Entry.access$1400(this.entry)[paramInt];
        try
        {
          localObject1 = DiskLruCache.this.fileSystem.sink((File)localObject1);
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          localObject2 = DiskLruCache.NULL_SINK;
          return localObject2;
        }
        Object localObject2 = new DiskLruCache.Editor.1(this, (uz)localObject2);
        return localObject2;
      }
    }
    
    public va newSource(int paramInt)
    {
      synchronized (DiskLruCache.this)
      {
        if (DiskLruCache.Entry.access$900(this.entry) != this) {
          throw new IllegalStateException();
        }
        boolean bool = DiskLruCache.Entry.access$800(this.entry);
        if (!bool) {
          return null;
        }
        try
        {
          va localva = DiskLruCache.this.fileSystem.source(DiskLruCache.Entry.access$1300(this.entry)[paramInt]);
          return localva;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          return null;
        }
      }
    }
  }
  
  final class Entry
  {
    private final File[] cleanFiles;
    private DiskLruCache.Editor currentEditor;
    private final File[] dirtyFiles;
    private final String key;
    private final long[] lengths;
    private boolean readable;
    private long sequenceNumber;
    
    private Entry(String paramString)
    {
      this.key = paramString;
      this.lengths = new long[DiskLruCache.this.valueCount];
      this.cleanFiles = new File[DiskLruCache.this.valueCount];
      this.dirtyFiles = new File[DiskLruCache.this.valueCount];
      paramString = new StringBuilder(paramString).append('.');
      int j = paramString.length();
      int i = 0;
      while (i < DiskLruCache.this.valueCount)
      {
        paramString.append(i);
        this.cleanFiles[i] = new File(DiskLruCache.this.directory, paramString.toString());
        paramString.append(".tmp");
        this.dirtyFiles[i] = new File(DiskLruCache.this.directory, paramString.toString());
        paramString.setLength(j);
        i += 1;
      }
    }
    
    private IOException invalidLengths(String[] paramArrayOfString)
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    
    private void setLengths(String[] paramArrayOfString)
    {
      if (paramArrayOfString.length != DiskLruCache.this.valueCount) {
        throw invalidLengths(paramArrayOfString);
      }
      int i = 0;
      try
      {
        while (i < paramArrayOfString.length)
        {
          this.lengths[i] = Long.parseLong(paramArrayOfString[i]);
          i += 1;
        }
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw invalidLengths(paramArrayOfString);
      }
    }
    
    DiskLruCache.Snapshot snapshot()
    {
      if (!Thread.holdsLock(DiskLruCache.this)) {
        throw new AssertionError();
      }
      va[] arrayOfva = new va[DiskLruCache.this.valueCount];
      Object localObject = (long[])this.lengths.clone();
      int i = 0;
      try
      {
        while (i < DiskLruCache.this.valueCount)
        {
          arrayOfva[i] = DiskLruCache.this.fileSystem.source(this.cleanFiles[i]);
          i += 1;
        }
        localObject = new DiskLruCache.Snapshot(DiskLruCache.this, this.key, this.sequenceNumber, arrayOfva, (long[])localObject, null);
        return localObject;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        i = 0;
        while ((i < DiskLruCache.this.valueCount) && (arrayOfva[i] != null))
        {
          Util.closeQuietly(arrayOfva[i]);
          i += 1;
        }
      }
      return null;
    }
    
    void writeLengths(uh paramuh)
    {
      long[] arrayOfLong = this.lengths;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        paramuh.ɟ(32).ʲ(l);
        i += 1;
      }
    }
  }
  
  public final class Snapshot
    implements Closeable
  {
    private final String key;
    private final long[] lengths;
    private final long sequenceNumber;
    private final va[] sources;
    
    private Snapshot(String paramString, long paramLong, va[] paramArrayOfva, long[] paramArrayOfLong)
    {
      this.key = paramString;
      this.sequenceNumber = paramLong;
      this.sources = paramArrayOfva;
      this.lengths = paramArrayOfLong;
    }
    
    public void close()
    {
      va[] arrayOfva = this.sources;
      int j = arrayOfva.length;
      int i = 0;
      while (i < j)
      {
        Util.closeQuietly(arrayOfva[i]);
        i += 1;
      }
    }
    
    public DiskLruCache.Editor edit()
    {
      return DiskLruCache.this.edit(this.key, this.sequenceNumber);
    }
    
    public long getLength(int paramInt)
    {
      return this.lengths[paramInt];
    }
    
    public va getSource(int paramInt)
    {
      return this.sources[paramInt];
    }
    
    public String key()
    {
      return this.key;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.DiskLruCache
 * JD-Core Version:    0.7.0.1
 */