package o;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class ᴐ
  implements Closeable
{
  private final int appVersion;
  private final File directory;
  private Writer fd;
  final ThreadPoolExecutor fe = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final Callable<Void> ff = new ᴛ(this);
  private final File journalFile;
  private final File journalFileBackup;
  private final File journalFileTmp;
  private final LinkedHashMap<String, ᴐ.ˊ> lruEntries = new LinkedHashMap(0, 0.75F, true);
  private long maxSize;
  private long nextSequenceNumber = 0L;
  private int redundantOpCount;
  private long size = 0L;
  private final int valueCount;
  
  private ᴐ(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    this.directory = paramFile;
    this.appVersion = paramInt1;
    this.journalFile = new File(paramFile, "journal");
    this.journalFileTmp = new File(paramFile, "journal.tmp");
    this.journalFileBackup = new File(paramFile, "journal.bkp");
    this.valueCount = paramInt2;
    this.maxSize = paramLong;
  }
  
  private void checkNotClosed()
  {
    if (this.fd == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private boolean journalRebuildRequired()
  {
    return (this.redundantOpCount >= 2000) && (this.redundantOpCount >= this.lruEntries.size());
  }
  
  private void processJournal()
  {
    ˊ(this.journalFileTmp);
    Iterator localIterator = this.lruEntries.values().iterator();
    while (localIterator.hasNext())
    {
      ᴐ.ˊ localˊ = (ᴐ.ˊ)localIterator.next();
      int i;
      if (ᴐ.ˊ.ˊ(localˊ) == null)
      {
        i = 0;
        while (i < this.valueCount)
        {
          this.size += ᴐ.ˊ.ˋ(localˊ)[i];
          i += 1;
        }
      }
      else
      {
        ᴐ.ˊ.ˊ(localˊ, null);
        i = 0;
        while (i < this.valueCount)
        {
          ˊ(localˊ.ﻧ(i));
          ˊ(localˊ.ʺ(i));
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
    //   0: new 170	o/ᴺ
    //   3: dup
    //   4: new 172	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 93	o/ᴐ:journalFile	Ljava/io/File;
    //   12: invokespecial 174	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: getstatic 180	o/ᵑ:US_ASCII	Ljava/nio/charset/Charset;
    //   18: invokespecial 183	o/ᴺ:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   21: astore_2
    //   22: aload_2
    //   23: invokevirtual 187	o/ᴺ:readLine	()Ljava/lang/String;
    //   26: astore_3
    //   27: aload_2
    //   28: invokevirtual 187	o/ᴺ:readLine	()Ljava/lang/String;
    //   31: astore 4
    //   33: aload_2
    //   34: invokevirtual 187	o/ᴺ:readLine	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload_2
    //   40: invokevirtual 187	o/ᴺ:readLine	()Ljava/lang/String;
    //   43: astore 6
    //   45: aload_2
    //   46: invokevirtual 187	o/ᴺ:readLine	()Ljava/lang/String;
    //   49: astore 7
    //   51: ldc 189
    //   53: aload_3
    //   54: invokevirtual 195	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   57: ifeq +53 -> 110
    //   60: ldc 197
    //   62: aload 4
    //   64: invokevirtual 195	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   67: ifeq +43 -> 110
    //   70: aload_0
    //   71: getfield 84	o/ᴐ:appVersion	I
    //   74: invokestatic 203	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   77: aload 5
    //   79: invokevirtual 195	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: ifeq +28 -> 110
    //   85: aload_0
    //   86: getfield 103	o/ᴐ:valueCount	I
    //   89: invokestatic 203	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   92: aload 6
    //   94: invokevirtual 195	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   97: ifeq +13 -> 110
    //   100: ldc 205
    //   102: aload 7
    //   104: invokevirtual 195	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   107: ifne +65 -> 172
    //   110: new 207	java/io/IOException
    //   113: dup
    //   114: new 209	java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial 210	java/lang/StringBuilder:<init>	()V
    //   121: ldc 212
    //   123: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_3
    //   127: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc 218
    //   132: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: aload 4
    //   137: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: ldc 218
    //   142: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload 6
    //   147: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: ldc 218
    //   152: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: aload 7
    //   157: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: ldc 220
    //   162: invokevirtual 216	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokespecial 223	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   171: athrow
    //   172: iconst_0
    //   173: istore_1
    //   174: aload_0
    //   175: aload_2
    //   176: invokevirtual 187	o/ᴺ:readLine	()Ljava/lang/String;
    //   179: invokespecial 226	o/ᴐ:readJournalLine	(Ljava/lang/String;)V
    //   182: iload_1
    //   183: iconst_1
    //   184: iadd
    //   185: istore_1
    //   186: goto -12 -> 174
    //   189: astore_3
    //   190: aload_0
    //   191: iload_1
    //   192: aload_0
    //   193: getfield 53	o/ᴐ:lruEntries	Ljava/util/LinkedHashMap;
    //   196: invokevirtual 123	java/util/LinkedHashMap:size	()I
    //   199: isub
    //   200: putfield 120	o/ᴐ:redundantOpCount	I
    //   203: aload_2
    //   204: invokevirtual 229	o/ᴺ:ᵩ	()Z
    //   207: ifeq +10 -> 217
    //   210: aload_0
    //   211: invokespecial 232	o/ᴐ:rebuildJournal	()V
    //   214: goto +36 -> 250
    //   217: aload_0
    //   218: new 234	java/io/BufferedWriter
    //   221: dup
    //   222: new 236	java/io/OutputStreamWriter
    //   225: dup
    //   226: new 238	java/io/FileOutputStream
    //   229: dup
    //   230: aload_0
    //   231: getfield 93	o/ᴐ:journalFile	Ljava/io/File;
    //   234: iconst_1
    //   235: invokespecial 241	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   238: getstatic 180	o/ᵑ:US_ASCII	Ljava/nio/charset/Charset;
    //   241: invokespecial 244	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   244: invokespecial 247	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   247: putfield 109	o/ᴐ:fd	Ljava/io/Writer;
    //   250: aload_2
    //   251: invokestatic 251	o/ᵑ:closeQuietly	(Ljava/io/Closeable;)V
    //   254: return
    //   255: astore_3
    //   256: aload_2
    //   257: invokestatic 251	o/ᵑ:closeQuietly	(Ljava/io/Closeable;)V
    //   260: aload_3
    //   261: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	262	0	this	ᴐ
    //   173	27	1	i	int
    //   21	236	2	localᴺ	ᴺ
    //   26	101	3	str1	String
    //   189	1	3	localEOFException	java.io.EOFException
    //   255	6	3	localObject	Object
    //   31	105	4	str2	String
    //   37	41	5	str3	String
    //   43	103	6	str4	String
    //   49	107	7	str5	String
    // Exception table:
    //   from	to	target	type
    //   174	182	189	java/io/EOFException
    //   22	110	255	finally
    //   110	172	255	finally
    //   174	182	255	finally
    //   190	214	255	finally
    //   217	250	255	finally
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
    ᴐ.ˊ localˊ = (ᴐ.ˊ)this.lruEntries.get(localObject1);
    Object localObject2 = localˊ;
    if (localˊ == null)
    {
      localObject2 = new ᴐ.ˊ(this, (String)localObject1, null);
      this.lruEntries.put(localObject1, localObject2);
    }
    if ((k != -1) && (i == "CLEAN".length()) && (paramString.startsWith("CLEAN")))
    {
      paramString = paramString.substring(k + 1).split(" ");
      ᴐ.ˊ.ˊ((ᴐ.ˊ)localObject2, true);
      ᴐ.ˊ.ˊ((ᴐ.ˊ)localObject2, null);
      ᴐ.ˊ.ˊ((ᴐ.ˊ)localObject2, paramString);
      return;
    }
    if ((k == -1) && (i == "DIRTY".length()) && (paramString.startsWith("DIRTY")))
    {
      ᴐ.ˊ.ˊ((ᴐ.ˊ)localObject2, new ᴐ.if(this, (ᴐ.ˊ)localObject2, null));
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
      if (this.fd != null) {
        this.fd.close();
      }
      BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), ᵑ.US_ASCII));
      try
      {
        localBufferedWriter.write("libcore.io.DiskLruCache");
        localBufferedWriter.write("\n");
        localBufferedWriter.write("1");
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(this.appVersion));
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(this.valueCount));
        localBufferedWriter.write("\n");
        localBufferedWriter.write("\n");
        Iterator localIterator = this.lruEntries.values().iterator();
        while (localIterator.hasNext())
        {
          ᴐ.ˊ localˊ = (ᴐ.ˊ)localIterator.next();
          if (ᴐ.ˊ.ˊ(localˊ) != null) {
            localBufferedWriter.write("DIRTY " + ᴐ.ˊ.ˎ(localˊ) + '\n');
          } else {
            localBufferedWriter.write("CLEAN " + ᴐ.ˊ.ˎ(localˊ) + localˊ.ᵠ() + '\n');
          }
        }
      }
      finally
      {
        localBufferedWriter.close();
      }
      if (this.journalFile.exists()) {
        ˊ(this.journalFile, this.journalFileBackup, true);
      }
      ˊ(this.journalFileTmp, this.journalFile, false);
      this.journalFileBackup.delete();
      this.fd = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), ᵑ.US_ASCII));
      return;
    }
    finally {}
  }
  
  private void trimToSize()
  {
    while (this.size > this.maxSize) {
      remove((String)((Map.Entry)this.lruEntries.entrySet().iterator().next()).getKey());
    }
  }
  
  private ᴐ.if ˊ(String paramString, long paramLong)
  {
    try
    {
      checkNotClosed();
      Object localObject2 = (ᴐ.ˊ)this.lruEntries.get(paramString);
      if ((paramLong != -1L) && ((localObject2 == null) || (ᴐ.ˊ.ᐝ((ᴐ.ˊ)localObject2) != paramLong))) {
        return null;
      }
      Object localObject1;
      if (localObject2 == null)
      {
        localObject1 = new ᴐ.ˊ(this, paramString, null);
        this.lruEntries.put(paramString, localObject1);
      }
      else
      {
        localObject1 = localObject2;
        if (ᴐ.ˊ.ˊ((ᴐ.ˊ)localObject2) != null) {
          return null;
        }
      }
      localObject2 = new ᴐ.if(this, (ᴐ.ˊ)localObject1, null);
      ᴐ.ˊ.ˊ((ᴐ.ˊ)localObject1, (ᴐ.if)localObject2);
      this.fd.append("DIRTY");
      this.fd.append(' ');
      this.fd.append(paramString);
      this.fd.append('\n');
      this.fd.flush();
      return localObject2;
    }
    finally {}
  }
  
  public static ᴐ ˊ(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("valueCount <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    if (((File)localObject).exists())
    {
      File localFile = new File(paramFile, "journal");
      if (localFile.exists()) {
        ((File)localObject).delete();
      } else {
        ˊ((File)localObject, localFile, false);
      }
    }
    localObject = new ᴐ(paramFile, paramInt1, paramInt2, paramLong);
    if (((ᴐ)localObject).journalFile.exists()) {
      try
      {
        ((ᴐ)localObject).readJournal();
        ((ᴐ)localObject).processJournal();
        return localObject;
      }
      catch (IOException localIOException)
      {
        System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        ((ᴐ)localObject).delete();
      }
    }
    paramFile.mkdirs();
    paramFile = new ᴐ(paramFile, paramInt1, paramInt2, paramLong);
    paramFile.rebuildJournal();
    return paramFile;
  }
  
  private static void ˊ(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private static void ˊ(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramBoolean) {
      ˊ(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private void ˊ(ᴐ.if paramif, boolean paramBoolean)
  {
    for (;;)
    {
      ᴐ.ˊ localˊ;
      int i;
      long l1;
      try
      {
        localˊ = ᴐ.if.ˊ(paramif);
        if (ᴐ.ˊ.ˊ(localˊ) != paramif) {
          throw new IllegalStateException();
        }
        if ((!paramBoolean) || (ᴐ.ˊ.ˏ(localˊ))) {
          break label427;
        }
        i = 0;
        if (i >= this.valueCount) {
          break label427;
        }
        if (ᴐ.if.ˋ(paramif)[i] == 0)
        {
          paramif.abort();
          throw new IllegalStateException("Newly created entry didn't create value for index " + i);
        }
        if (localˊ.ʺ(i).exists()) {
          break label420;
        }
        paramif.abort();
        return;
      }
      finally {}
      if (i < this.valueCount)
      {
        paramif = localˊ.ʺ(i);
        if (paramBoolean)
        {
          if (paramif.exists())
          {
            File localFile = localˊ.ﻧ(i);
            paramif.renameTo(localFile);
            l1 = ᴐ.ˊ.ˋ(localˊ)[i];
            long l2 = localFile.length();
            ᴐ.ˊ.ˋ(localˊ)[i] = l2;
            this.size = (this.size - l1 + l2);
          }
        }
        else {
          ˊ(paramif);
        }
      }
      else
      {
        this.redundantOpCount += 1;
        ᴐ.ˊ.ˊ(localˊ, null);
        if ((ᴐ.ˊ.ˏ(localˊ) | paramBoolean))
        {
          ᴐ.ˊ.ˊ(localˊ, true);
          this.fd.append("CLEAN");
          this.fd.append(' ');
          this.fd.append(ᴐ.ˊ.ˎ(localˊ));
          this.fd.append(localˊ.ᵠ());
          this.fd.append('\n');
          if (paramBoolean)
          {
            l1 = this.nextSequenceNumber;
            this.nextSequenceNumber = (1L + l1);
            ᴐ.ˊ.ˊ(localˊ, l1);
          }
        }
        else
        {
          this.lruEntries.remove(ᴐ.ˊ.ˎ(localˊ));
          this.fd.append("REMOVE");
          this.fd.append(' ');
          this.fd.append(ᴐ.ˊ.ˎ(localˊ));
          this.fd.append('\n');
        }
        this.fd.flush();
        if ((this.size > this.maxSize) || (journalRebuildRequired())) {
          this.fe.submit(this.ff);
        }
        return;
        label420:
        i += 1;
        continue;
        label427:
        i = 0;
        continue;
      }
      i += 1;
    }
  }
  
  public void close()
  {
    for (;;)
    {
      try
      {
        if (this.fd == null) {
          return;
        }
        Iterator localIterator = new ArrayList(this.lruEntries.values()).iterator();
        if (localIterator.hasNext())
        {
          ᴐ.ˊ localˊ = (ᴐ.ˊ)localIterator.next();
          if (ᴐ.ˊ.ˊ(localˊ) != null) {
            ᴐ.ˊ.ˊ(localˊ).abort();
          }
        }
        else
        {
          trimToSize();
          this.fd.close();
          this.fd = null;
          return;
        }
      }
      finally {}
    }
  }
  
  public void delete()
  {
    close();
    ᵑ.deleteContents(this.directory);
  }
  
  public boolean remove(String paramString)
  {
    for (;;)
    {
      ᴐ.ˊ localˊ;
      int i;
      try
      {
        checkNotClosed();
        localˊ = (ᴐ.ˊ)this.lruEntries.get(paramString);
        if ((localˊ != null) && (ᴐ.ˊ.ˊ(localˊ) == null)) {
          break label209;
        }
        return false;
      }
      finally {}
      if (i < this.valueCount)
      {
        File localFile = localˊ.ﻧ(i);
        if ((localFile.exists()) && (!localFile.delete())) {
          throw new IOException("failed to delete " + localFile);
        }
        this.size -= ᴐ.ˊ.ˋ(localˊ)[i];
        ᴐ.ˊ.ˋ(localˊ)[i] = 0L;
        i += 1;
      }
      else
      {
        this.redundantOpCount += 1;
        this.fd.append("REMOVE");
        this.fd.append(' ');
        this.fd.append(paramString);
        this.fd.append('\n');
        this.lruEntries.remove(paramString);
        if (journalRebuildRequired()) {
          this.fe.submit(this.ff);
        }
        return true;
        label209:
        i = 0;
      }
    }
  }
  
  public ᴐ.ˋ ʼ(String paramString)
  {
    for (;;)
    {
      int i;
      try
      {
        checkNotClosed();
        ᴐ.ˊ localˊ = (ᴐ.ˊ)this.lruEntries.get(paramString);
        if (localˊ == null) {
          return null;
        }
        if (!ᴐ.ˊ.ˏ(localˊ)) {
          return null;
        }
        File[] arrayOfFile = localˊ.cleanFiles;
        int j = arrayOfFile.length;
        i = 0;
        if (i < j)
        {
          if (!arrayOfFile[i].exists()) {
            return null;
          }
        }
        else
        {
          this.redundantOpCount += 1;
          this.fd.append("READ");
          this.fd.append(' ');
          this.fd.append(paramString);
          this.fd.append('\n');
          if (journalRebuildRequired()) {
            this.fe.submit(this.ff);
          }
          paramString = new ᴐ.ˋ(this, paramString, ᴐ.ˊ.ᐝ(localˊ), localˊ.cleanFiles, ᴐ.ˊ.ˋ(localˊ), null);
          return paramString;
        }
      }
      finally {}
      i += 1;
    }
  }
  
  public ᴐ.if ʽ(String paramString)
  {
    return ˊ(paramString, -1L);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */