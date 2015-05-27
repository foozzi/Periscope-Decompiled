package o;

import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class ऽ
  implements Thread.UncaughtExceptionHandler
{
  static final FilenameFilter nX = new บ();
  static final Comparator<File> nY = new ᒉ();
  static final Comparator<File> nZ = new ᒋ();
  static final FilenameFilter oa = new ᒍ();
  private static final Pattern ob = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
  private static final Map<String, String> oc = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
  private final ة nL;
  private final AtomicInteger od = new AtomicInteger(0);
  private final AtomicBoolean oe = new AtomicBoolean(false);
  private final Thread.UncaughtExceptionHandler of;
  private final File og;
  private final AtomicBoolean oh;
  private final BroadcastReceiver oi;
  private final BroadcastReceiver oj;
  private final qr ok;
  private boolean ol;
  private final ɬ om;
  private final ᔂ on;
  private final ᚐ oo;
  
  ऽ(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, ٱ paramٱ, ة paramة, qr paramqr, ᚐ paramᚐ, ɬ paramɬ)
  {
    this.of = paramUncaughtExceptionHandler;
    this.nL = paramة;
    this.ok = paramqr;
    this.om = paramɬ;
    this.oo = paramᚐ;
    this.oh = new AtomicBoolean(false);
    this.og = paramɬ.Τ();
    this.on = new ᔂ(paramɬ.getContext(), this.og);
    ˊ(paramٱ);
    this.oj = new ᒐ(this);
    paramUncaughtExceptionHandler = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
    this.oi = new ᓓ(this);
    paramٱ = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
    paramة = paramɬ.getContext();
    paramة.registerReceiver(this.oj, paramUncaughtExceptionHandler);
    paramة.registerReceiver(this.oi, paramٱ);
    this.oe.set(true);
  }
  
  private void ʹ(String paramString)
  {
    Object localObject1 = null;
    String str1 = null;
    String str2 = null;
    ɤ localɤ2 = null;
    ɤ localɤ1 = localɤ2;
    Object localObject2 = str2;
    try
    {
      paramString = new ȑ(this.og, paramString + "SessionUser");
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = str2;
      localɤ2 = ɤ.ˏ(paramString);
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      str2 = this.om.ŧ();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      String str3 = this.om.getUserName();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      String str4 = this.om.Ƭ();
      if ((str2 == null) && (str3 == null) && (str4 == null))
      {
        qh.ˊ(localɤ2, "Failed to flush session user file.");
        qh.ˊ(paramString, "Failed to close session user file.");
        return;
      }
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      this.oo.ˊ(localɤ2, str2, str3, str4);
      qh.ˊ(localɤ2, "Failed to flush session user file.");
      qh.ˊ(paramString, "Failed to close session user file.");
      return;
    }
    catch (Exception paramString)
    {
      localObject1 = str1;
      localObject2 = localɤ1;
      ᓿ.ˊ(paramString, str1);
      localObject1 = str1;
      localObject2 = localɤ1;
      throw paramString;
    }
    finally
    {
      qh.ˊ((Flushable)localObject2, "Failed to flush session user file.");
      qh.ˊ((Closeable)localObject1, "Failed to close session user file.");
    }
  }
  
  private void ˊ(File paramFile, String paramString, int paramInt)
  {
    pj.cd().ˑ("Fabric", "Collecting session parts for ID " + paramString);
    File[] arrayOfFile2 = ˊ(new ऽ.ˊ(paramString + "SessionCrash"));
    boolean bool1;
    if ((arrayOfFile2 != null) && (arrayOfFile2.length > 0)) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    pj.cd().ˑ("Fabric", String.format(Locale.US, "Session %s has fatal exception: %s", new Object[] { paramString, Boolean.valueOf(bool1) }));
    File[] arrayOfFile1 = ˊ(new ऽ.ˊ(paramString + "SessionEvent"));
    boolean bool2;
    if ((arrayOfFile1 != null) && (arrayOfFile1.length > 0)) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    pj.cd().ˑ("Fabric", String.format(Locale.US, "Session %s has non-fatal exceptions: %s", new Object[] { paramString, Boolean.valueOf(bool2) }));
    if ((bool1) || (bool2))
    {
      Object localObject2 = null;
      Object localObject1 = null;
      Object localObject4 = null;
      ɤ localɤ2 = null;
      ɤ localɤ1 = localɤ2;
      Object localObject3 = localObject4;
      try
      {
        ȑ localȑ = new ȑ(this.og, paramString);
        localObject1 = localȑ;
        localɤ1 = localɤ2;
        localObject2 = localȑ;
        localObject3 = localObject4;
        localɤ2 = ɤ.ˏ(localȑ);
        localObject1 = localȑ;
        localɤ1 = localɤ2;
        localObject2 = localȑ;
        localObject3 = localɤ2;
        pj.cd().ˑ("Fabric", "Collecting SessionStart data for session ID " + paramString);
        localObject1 = localȑ;
        localɤ1 = localɤ2;
        localObject2 = localȑ;
        localObject3 = localɤ2;
        ˊ(localɤ2, paramFile);
        localObject1 = localȑ;
        localɤ1 = localɤ2;
        localObject2 = localȑ;
        localObject3 = localɤ2;
        localɤ2.ˊ(4, new Date().getTime() / 1000L);
        localObject1 = localȑ;
        localɤ1 = localɤ2;
        localObject2 = localȑ;
        localObject3 = localɤ2;
        localɤ2.ˑ(5, bool1);
        localObject1 = localȑ;
        localɤ1 = localɤ2;
        localObject2 = localȑ;
        localObject3 = localɤ2;
        ˊ(localɤ2, paramString);
        if (bool2)
        {
          paramFile = arrayOfFile1;
          localObject1 = localȑ;
          localɤ1 = localɤ2;
          localObject2 = localȑ;
          localObject3 = localɤ2;
          if (arrayOfFile1.length > paramInt)
          {
            localObject1 = localȑ;
            localɤ1 = localɤ2;
            localObject2 = localȑ;
            localObject3 = localɤ2;
            pj.cd().ˑ("Fabric", String.format(Locale.US, "Trimming down to %d logged exceptions.", new Object[] { Integer.valueOf(paramInt) }));
            localObject1 = localȑ;
            localɤ1 = localɤ2;
            localObject2 = localȑ;
            localObject3 = localɤ2;
            ˊ(paramString, paramInt);
            localObject1 = localȑ;
            localɤ1 = localɤ2;
            localObject2 = localȑ;
            localObject3 = localɤ2;
            paramFile = ˊ(new ऽ.ˊ(paramString + "SessionEvent"));
          }
          localObject1 = localȑ;
          localɤ1 = localɤ2;
          localObject2 = localȑ;
          localObject3 = localɤ2;
          ˊ(localɤ2, paramFile, paramString);
        }
        if (bool1)
        {
          localObject1 = localȑ;
          localɤ1 = localɤ2;
          localObject2 = localȑ;
          localObject3 = localɤ2;
          ˊ(localɤ2, arrayOfFile2[0]);
        }
        localObject1 = localȑ;
        localɤ1 = localɤ2;
        localObject2 = localȑ;
        localObject3 = localɤ2;
        localɤ2.ᵗ(11, 1);
        localObject1 = localȑ;
        localɤ1 = localɤ2;
        localObject2 = localȑ;
        localObject3 = localɤ2;
        localɤ2.ﾟ(12, 3);
        qh.ˊ(localɤ2, "Error flushing session file stream");
        qh.ˊ(localȑ, "Failed to close CLS file");
      }
      catch (Exception paramFile)
      {
        localObject2 = localObject1;
        localObject3 = localɤ1;
        pj.cd().ˏ("Fabric", "Failed to write session file for session ID: " + paramString, paramFile);
        localObject2 = localObject1;
        localObject3 = localɤ1;
        ᓿ.ˊ(paramFile, localObject1);
        qh.ˊ(localɤ1, "Error flushing session file stream");
        ˊ(localObject1);
      }
      finally
      {
        qh.ˊ((Flushable)localObject3, "Error flushing session file stream");
        qh.ˊ(localObject2, "Failed to close CLS file");
      }
    }
    else
    {
      pj.cd().ˑ("Fabric", "No events present for session ID " + paramString);
    }
    pj.cd().ˑ("Fabric", "Removing session part files for ID " + paramString);
    ـ(paramString);
  }
  
  private void ˊ(String paramString, int paramInt)
  {
    ᴏ.ˊ(this.og, new ऽ.ˊ(paramString + "SessionEvent"), paramInt, nZ);
  }
  
  private void ˊ(String paramString, Date paramDate)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    String str = null;
    ɤ localɤ2 = null;
    ɤ localɤ1 = localɤ2;
    Object localObject3 = str;
    try
    {
      ȑ localȑ = new ȑ(this.og, paramString + "BeginSession");
      localObject1 = localȑ;
      localɤ1 = localɤ2;
      localObject2 = localȑ;
      localObject3 = str;
      localɤ2 = ɤ.ˏ(localȑ);
      localObject1 = localȑ;
      localɤ1 = localɤ2;
      localObject2 = localȑ;
      localObject3 = localɤ2;
      str = String.format(Locale.US, "Crashlytics Android SDK/%s", new Object[] { this.om.getVersion() });
      localObject1 = localȑ;
      localɤ1 = localɤ2;
      localObject2 = localȑ;
      localObject3 = localɤ2;
      long l = paramDate.getTime() / 1000L;
      localObject1 = localȑ;
      localɤ1 = localɤ2;
      localObject2 = localȑ;
      localObject3 = localɤ2;
      this.oo.ˊ(localɤ2, paramString, str, l);
      qh.ˊ(localɤ2, "Failed to flush to session begin file.");
      qh.ˊ(localȑ, "Failed to close begin session file.");
      return;
    }
    catch (Exception paramString)
    {
      localObject2 = localObject1;
      localObject3 = localɤ1;
      ᓿ.ˊ(paramString, localObject1);
      localObject2 = localObject1;
      localObject3 = localɤ1;
      throw paramString;
    }
    finally
    {
      qh.ˊ((Flushable)localObject3, "Failed to flush to session begin file.");
      qh.ˊ(localObject2, "Failed to close begin session file.");
    }
  }
  
  private void ˊ(Date paramDate, Thread paramThread, Throwable paramThrowable)
  {
    ˋ(paramDate, paramThread, paramThrowable);
    บ();
    ऽ();
    າ();
    if (!this.om.ο()) {
      ᒉ();
    }
  }
  
  private void ˊ(ȑ paramȑ)
  {
    if (paramȑ != null) {
      try
      {
        paramȑ.ﮞ();
        return;
      }
      catch (IOException paramȑ)
      {
        pj.cd().ˏ("Fabric", "Error closing session file stream in the presence of an exception", paramȑ);
      }
    }
  }
  
  private void ˊ(ɤ paramɤ, File paramFile)
  {
    if (paramFile.exists())
    {
      byte[] arrayOfByte = new byte[(int)paramFile.length()];
      File localFile = null;
      try
      {
        paramFile = new FileInputStream(paramFile);
        int i = 0;
        for (;;)
        {
          localFile = paramFile;
          if (i >= arrayOfByte.length) {
            break;
          }
          localFile = paramFile;
          int j = paramFile.read(arrayOfByte, i, arrayOfByte.length - i);
          if (j < 0) {
            break;
          }
          i += j;
        }
      }
      finally
      {
        qh.ˊ(localFile, "Failed to close file input stream.");
      }
      paramɤ.ͺ(arrayOfByte);
      return;
    }
    pj.cd().ˏ("Fabric", "Tried to include a file that doesn't exist: " + paramFile.getName(), null);
  }
  
  private void ˊ(ɤ paramɤ, String paramString)
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "SessionUser";
    arrayOfString[1] = "SessionApp";
    arrayOfString[2] = "SessionOS";
    arrayOfString[3] = "SessionDevice";
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      File[] arrayOfFile = ˊ(new ऽ.ˊ(paramString + str));
      if (arrayOfFile.length == 0)
      {
        pj.cd().ˏ("Fabric", "Can't find " + str + " data for session ID " + paramString, null);
      }
      else
      {
        pj.cd().ˑ("Fabric", "Collecting " + str + " data for session ID " + paramString);
        ˊ(paramɤ, arrayOfFile[0]);
      }
      i += 1;
    }
  }
  
  private void ˊ(ɤ paramɤ, Date paramDate, Thread paramThread, Throwable paramThrowable, String paramString, boolean paramBoolean)
  {
    Object localObject = this.om.getContext();
    long l1 = paramDate.getTime() / 1000L;
    float f = qh.ᵣ((Context)localObject);
    int j = qh.ˊ((Context)localObject, this.ol);
    boolean bool = qh.יִ((Context)localObject);
    int k = ((Context)localObject).getResources().getConfiguration().orientation;
    long l2 = qh.cu();
    long l3 = qh.ᵕ((Context)localObject);
    long l4 = qh.і(Environment.getDataDirectory().getPath());
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = qh.ˊ(((Context)localObject).getPackageName(), (Context)localObject);
    LinkedList localLinkedList = new LinkedList();
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    Thread[] arrayOfThread;
    if (paramBoolean)
    {
      paramDate = Thread.getAllStackTraces();
      arrayOfThread = new Thread[paramDate.size()];
      int i = 0;
      paramDate = paramDate.entrySet().iterator();
      while (paramDate.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramDate.next();
        arrayOfThread[i] = ((Thread)localEntry.getKey());
        localLinkedList.add(localEntry.getValue());
        i += 1;
      }
    }
    else
    {
      arrayOfThread = new Thread[0];
    }
    if (!qh.ˊ((Context)localObject, "com.crashlytics.CollectCustomKeys", true))
    {
      paramDate = new TreeMap();
    }
    else
    {
      localObject = this.om.getAttributes();
      paramDate = (Date)localObject;
      if (localObject != null)
      {
        paramDate = (Date)localObject;
        if (((Map)localObject).size() > 1) {
          paramDate = new TreeMap((Map)localObject);
        }
      }
    }
    this.oo.ˊ(paramɤ, l1, paramThread, paramThrowable, paramString, arrayOfThread, f, j, bool, k, l2 - l3, l4, localRunningAppProcessInfo, localLinkedList, arrayOfStackTraceElement, this.on, paramDate);
  }
  
  private void ˊ(ɤ paramɤ, File[] paramArrayOfFile, String paramString)
  {
    Arrays.sort(paramArrayOfFile, qh.VA);
    int j = paramArrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      File localFile = paramArrayOfFile[i];
      try
      {
        pj.cd().ˑ("Fabric", String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", new Object[] { paramString, localFile.getName() }));
        ˊ(paramɤ, localFile);
      }
      catch (Exception localException)
      {
        pj.cd().ˏ("Fabric", "Error writting non-fatal to session.", localException);
      }
      i += 1;
    }
  }
  
  private void ˊ(ٱ paramٱ)
  {
    pj.cd().ˑ("Fabric", "Checking for previous crash marker.");
    File localFile = new File(this.om.Τ(), "crash_marker");
    if (localFile.exists())
    {
      localFile.delete();
      if (paramٱ != null) {
        try
        {
          paramٱ.ԍ();
          return;
        }
        catch (Exception paramٱ)
        {
          pj.cd().ˏ("Fabric", "Exception thrown by CrashlyticsListener while notifying of previous crash.", paramٱ);
        }
      }
    }
  }
  
  private void ˊ(ﾚ paramﾚ)
  {
    Object localObject8 = null;
    Object localObject9 = null;
    ȑ localȑ = null;
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject7 = null;
    Object localObject3 = localObject8;
    Object localObject4 = localObject5;
    Object localObject1 = localObject9;
    Object localObject2 = localObject6;
    try
    {
      String str = ٱ();
      if (str != null)
      {
        localObject3 = localObject8;
        localObject4 = localObject5;
        localObject1 = localObject9;
        localObject2 = localObject6;
        ɬ.ˍ(str);
        localObject3 = localObject8;
        localObject4 = localObject5;
        localObject1 = localObject9;
        localObject2 = localObject6;
        localȑ = new ȑ(this.og, str + "SessionCrash");
        localObject3 = localȑ;
        localObject4 = localObject5;
        localObject1 = localȑ;
        localObject2 = localObject6;
        localObject5 = ɤ.ˏ(localȑ);
        localObject3 = localȑ;
        localObject4 = localObject5;
        localObject1 = localȑ;
        localObject2 = localObject5;
        ᔦ.ˊ(paramﾚ, (ɤ)localObject5);
      }
      else
      {
        localObject3 = localObject8;
        localObject4 = localObject5;
        localObject1 = localObject9;
        localObject2 = localObject6;
        pj.cd().ˏ("Fabric", "Tried to write a native crash while no session was open.", null);
        localObject5 = localObject7;
      }
      qh.ˊ((Flushable)localObject5, "Failed to flush to session begin file.");
      qh.ˊ(localȑ, "Failed to close fatal exception file output stream.");
      return;
    }
    catch (Exception paramﾚ)
    {
      localObject1 = localObject3;
      localObject2 = localObject4;
      pj.cd().ˏ("Fabric", "An error occurred in the native crash logger", paramﾚ);
      localObject1 = localObject3;
      localObject2 = localObject4;
      ᓿ.ˊ(paramﾚ, (OutputStream)localObject3);
      return;
    }
    finally
    {
      qh.ˊ(localObject2, "Failed to flush to session begin file.");
      qh.ˊ((Closeable)localObject1, "Failed to close fatal exception file output stream.");
    }
  }
  
  private File[] ˊ(FilenameFilter paramFilenameFilter)
  {
    return ˊ(this.og.listFiles(paramFilenameFilter));
  }
  
  private File[] ˊ(File[] paramArrayOfFile)
  {
    if (paramArrayOfFile == null) {
      return new File[0];
    }
    return paramArrayOfFile;
  }
  
  private void ˋ(Date paramDate, Thread paramThread, Throwable paramThrowable)
  {
    Object localObject8 = null;
    Object localObject9 = null;
    ȑ localȑ = null;
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject7 = null;
    Object localObject3 = localObject8;
    Object localObject4 = localObject5;
    Object localObject1 = localObject9;
    Object localObject2 = localObject6;
    try
    {
      new File(this.og, "crash_marker").createNewFile();
      localObject3 = localObject8;
      localObject4 = localObject5;
      localObject1 = localObject9;
      localObject2 = localObject6;
      String str = ٱ();
      if (str != null)
      {
        localObject3 = localObject8;
        localObject4 = localObject5;
        localObject1 = localObject9;
        localObject2 = localObject6;
        ɬ.ˍ(str);
        localObject3 = localObject8;
        localObject4 = localObject5;
        localObject1 = localObject9;
        localObject2 = localObject6;
        localȑ = new ȑ(this.og, str + "SessionCrash");
        localObject3 = localȑ;
        localObject4 = localObject5;
        localObject1 = localȑ;
        localObject2 = localObject6;
        localObject5 = ɤ.ˏ(localȑ);
        localObject3 = localȑ;
        localObject4 = localObject5;
        localObject1 = localȑ;
        localObject2 = localObject5;
        ˊ((ɤ)localObject5, paramDate, paramThread, paramThrowable, "crash", true);
      }
      else
      {
        localObject3 = localObject8;
        localObject4 = localObject5;
        localObject1 = localObject9;
        localObject2 = localObject6;
        pj.cd().ˏ("Fabric", "Tried to write a fatal exception while no session was open.", null);
        localObject5 = localObject7;
      }
      qh.ˊ((Flushable)localObject5, "Failed to flush to session begin file.");
      qh.ˊ(localȑ, "Failed to close fatal exception file output stream.");
      return;
    }
    catch (Exception paramDate)
    {
      localObject1 = localObject3;
      localObject2 = localObject4;
      pj.cd().ˏ("Fabric", "An error occurred in the fatal exception logger", paramDate);
      localObject1 = localObject3;
      localObject2 = localObject4;
      ᓿ.ˊ(paramDate, (OutputStream)localObject3);
      return;
    }
    finally
    {
      qh.ˊ(localObject2, "Failed to flush to session begin file.");
      qh.ˊ((Closeable)localObject1, "Failed to close fatal exception file output stream.");
    }
  }
  
  private void ˎ(Date paramDate, Thread paramThread, Throwable paramThrowable)
  {
    String str1 = ٱ();
    if (str1 != null)
    {
      ɬ.ˌ(str1);
      Object localObject4 = null;
      ȑ localȑ2 = null;
      Object localObject3 = null;
      ɤ localɤ2 = null;
      ȑ localȑ1 = localȑ2;
      ɤ localɤ1 = localɤ2;
      Object localObject1 = localObject4;
      Object localObject2 = localObject3;
      try
      {
        pj.cd().ˑ("Fabric", "Crashlytics is logging non-fatal exception \"" + paramThrowable + "\" from thread " + paramThread.getName());
        localȑ1 = localȑ2;
        localɤ1 = localɤ2;
        localObject1 = localObject4;
        localObject2 = localObject3;
        String str2 = qh.⁀(this.od.getAndIncrement());
        localȑ1 = localȑ2;
        localɤ1 = localɤ2;
        localObject1 = localObject4;
        localObject2 = localObject3;
        str2 = str1 + "SessionEvent" + str2;
        localȑ1 = localȑ2;
        localɤ1 = localɤ2;
        localObject1 = localObject4;
        localObject2 = localObject3;
        localȑ2 = new ȑ(this.og, str2);
        localȑ1 = localȑ2;
        localɤ1 = localɤ2;
        localObject1 = localȑ2;
        localObject2 = localObject3;
        localɤ2 = ɤ.ˏ(localȑ2);
        localȑ1 = localȑ2;
        localɤ1 = localɤ2;
        localObject1 = localȑ2;
        localObject2 = localɤ2;
        ˊ(localɤ2, paramDate, paramThread, paramThrowable, "error", false);
        qh.ˊ(localɤ2, "Failed to flush to non-fatal file.");
        qh.ˊ(localȑ2, "Failed to close non-fatal file output stream.");
      }
      catch (Exception paramDate)
      {
        localObject1 = localȑ1;
        localObject2 = localɤ1;
        pj.cd().ˏ("Fabric", "An error occurred in the non-fatal exception logger", paramDate);
        localObject1 = localȑ1;
        localObject2 = localɤ1;
        ᓿ.ˊ(paramDate, localȑ1);
        qh.ˊ(localɤ1, "Failed to flush to non-fatal file.");
        qh.ˊ(localȑ1, "Failed to close non-fatal file output stream.");
      }
      finally
      {
        qh.ˊ((Flushable)localObject2, "Failed to flush to non-fatal file.");
        qh.ˊ((Closeable)localObject1, "Failed to close non-fatal file output stream.");
      }
      try
      {
        ˊ(str1, 64);
      }
      catch (Exception paramDate)
      {
        pj.cd().ˏ("Fabric", "An error occurred when trimming non-fatal files.", paramDate);
      }
      return;
    }
    pj.cd().ˏ("Fabric", "Tried to write a non-fatal exception while no session was open.", null);
  }
  
  private void ـ(String paramString)
  {
    paramString = ᐧ(paramString);
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      paramString[i].delete();
      i += 1;
    }
  }
  
  private String ٱ()
  {
    File[] arrayOfFile = ˊ(new ऽ.ˊ("BeginSession"));
    Arrays.sort(arrayOfFile, nY);
    if (arrayOfFile.length > 0) {
      return ᐝ(arrayOfFile[0]);
    }
    return null;
  }
  
  private void ऽ()
  {
    Date localDate = new Date();
    String str = new Ƭ(this.ok).toString();
    pj.cd().ˑ("Fabric", "Opening an new session with ID " + str);
    ˊ(str, localDate);
    ᐨ(str);
    ﹳ(str);
    ﾞ(str);
  }
  
  private void บ()
  {
    ﾆ(8);
    Object localObject = ٱ();
    if (localObject != null)
    {
      ʹ((String)localObject);
      localObject = this.om.о();
      if (localObject != null)
      {
        int j = ((tq)localObject).Ze;
        pj.cd().ˑ("Fabric", "Closing all open sessions.");
        localObject = ะ();
        if ((localObject != null) && (localObject.length > 0))
        {
          int k = localObject.length;
          int i = 0;
          while (i < k)
          {
            File localFile = localObject[i];
            String str = ᐝ(localFile);
            pj.cd().ˑ("Fabric", "Closing session: " + str);
            ˊ(localFile, str, j);
            i += 1;
          }
        }
      }
      else
      {
        pj.cd().ˑ("Fabric", "Unable to close session. Settings are not loaded.");
      }
      return;
    }
    pj.cd().ˑ("Fabric", "No open sessions exist.");
  }
  
  private File[] ย()
  {
    return ˊ(nX);
  }
  
  private String ᐝ(File paramFile)
  {
    return paramFile.getName().substring(0, 35);
  }
  
  private File[] ᐧ(String paramString)
  {
    return ˊ(new ऽ.ˋ(paramString));
  }
  
  private void ᐨ(String paramString)
  {
    Object localObject1 = null;
    String str1 = null;
    String str2 = null;
    ɤ localɤ2 = null;
    ɤ localɤ1 = localɤ2;
    Object localObject2 = str2;
    try
    {
      paramString = new ȑ(this.og, paramString + "SessionApp");
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = str2;
      localɤ2 = ɤ.ˏ(paramString);
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      str2 = this.om.getPackageName();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      String str3 = this.om.ć();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      String str4 = this.om.ﾕ();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      String str5 = this.ok.cA();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      int i = ql.ї(this.om.getInstallerPackageName()).getId();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      this.oo.ˊ(localɤ2, str2, str3, str4, str5, i);
      qh.ˊ(localɤ2, "Failed to flush to session app file.");
      qh.ˊ(paramString, "Failed to close session app file.");
      return;
    }
    catch (Exception paramString)
    {
      localObject1 = str1;
      localObject2 = localɤ1;
      ᓿ.ˊ(paramString, str1);
      localObject1 = str1;
      localObject2 = localɤ1;
      throw paramString;
    }
    finally
    {
      qh.ˊ((Flushable)localObject2, "Failed to flush to session app file.");
      qh.ˊ((Closeable)localObject1, "Failed to close session app file.");
    }
  }
  
  private void ᐸ()
  {
    File localFile = new File(this.om.Τ(), "invalidClsFiles");
    if (localFile.exists())
    {
      if (localFile.isDirectory())
      {
        File[] arrayOfFile = localFile.listFiles();
        int j = arrayOfFile.length;
        int i = 0;
        while (i < j)
        {
          arrayOfFile[i].delete();
          i += 1;
        }
      }
      localFile.delete();
    }
  }
  
  private void ᒉ()
  {
    File[] arrayOfFile = ย();
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      File localFile = arrayOfFile[i];
      this.nL.ˊ(new ᐸ(this, localFile));
      i += 1;
    }
  }
  
  private void ﹳ(String paramString)
  {
    Object localObject1 = null;
    String str = null;
    Object localObject3 = null;
    ɤ localɤ2 = null;
    ɤ localɤ1 = localɤ2;
    Object localObject2 = localObject3;
    try
    {
      paramString = new ȑ(this.og, paramString + "SessionOS");
      str = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localObject3;
      localɤ2 = ɤ.ˏ(paramString);
      str = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      boolean bool = qh.ᐡ(this.om.getContext());
      str = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      this.oo.ˊ(localɤ2, bool);
      qh.ˊ(localɤ2, "Failed to flush to session OS file.");
      qh.ˊ(paramString, "Failed to close session OS file.");
      return;
    }
    catch (Exception paramString)
    {
      localObject1 = str;
      localObject2 = localɤ1;
      ᓿ.ˊ(paramString, str);
      localObject1 = str;
      localObject2 = localɤ1;
      throw paramString;
    }
    finally
    {
      qh.ˊ((Flushable)localObject2, "Failed to flush to session OS file.");
      qh.ˊ((Closeable)localObject1, "Failed to close session OS file.");
    }
  }
  
  private void ﾆ(int paramInt)
  {
    HashSet localHashSet = new HashSet();
    File[] arrayOfFile = ะ();
    Arrays.sort(arrayOfFile, nY);
    int i = Math.min(paramInt, arrayOfFile.length);
    paramInt = 0;
    while (paramInt < i)
    {
      localHashSet.add(ᐝ(arrayOfFile[paramInt]));
      paramInt += 1;
    }
    arrayOfFile = ˊ(new ऽ.if(null));
    i = arrayOfFile.length;
    paramInt = 0;
    while (paramInt < i)
    {
      File localFile = arrayOfFile[paramInt];
      String str = localFile.getName();
      Matcher localMatcher = ob.matcher(str);
      localMatcher.matches();
      if (!localHashSet.contains(localMatcher.group(1)))
      {
        pj.cd().ˑ("Fabric", "Trimming open session file: " + str);
        localFile.delete();
      }
      paramInt += 1;
    }
  }
  
  private void ﾞ(String paramString)
  {
    Object localObject1 = null;
    String str1 = null;
    Context localContext = null;
    ɤ localɤ2 = null;
    ɤ localɤ1 = localɤ2;
    Object localObject2 = localContext;
    try
    {
      paramString = new ȑ(this.og, paramString + "SessionDevice");
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localContext;
      localɤ2 = ɤ.ˏ(paramString);
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      localContext = this.om.getContext();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      Object localObject3 = new StatFs(Environment.getDataDirectory().getPath());
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      String str2 = this.ok.cE();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      int i = qh.ct();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      int j = Runtime.getRuntime().availableProcessors();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      long l1 = qh.cu();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      long l2 = ((StatFs)localObject3).getBlockCount();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      long l3 = ((StatFs)localObject3).getBlockSize();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      boolean bool = qh.ᐟ(localContext);
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      localObject3 = this.ok.Ἲ();
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      int k = qh.ᐪ(localContext);
      str1 = paramString;
      localɤ1 = localɤ2;
      localObject1 = paramString;
      localObject2 = localɤ2;
      this.oo.ˊ(localɤ2, str2, i, Build.MODEL, j, l1, l2 * l3, bool, (Map)localObject3, k, Build.MANUFACTURER, Build.PRODUCT);
      qh.ˊ(localɤ2, "Failed to flush session device info.");
      qh.ˊ(paramString, "Failed to close session device file.");
      return;
    }
    catch (Exception paramString)
    {
      localObject1 = str1;
      localObject2 = localɤ1;
      ᓿ.ˊ(paramString, str1);
      localObject1 = str1;
      localObject2 = localɤ1;
      throw paramString;
    }
    finally
    {
      qh.ˊ((Flushable)localObject2, "Failed to flush session device info.");
      qh.ˊ((Closeable)localObject1, "Failed to close session device file.");
    }
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    try
    {
      this.oh.set(true);
      try
      {
        pj.cd().ˑ("Fabric", "Crashlytics is handling uncaught exception \"" + paramThrowable + "\" from thread " + paramThread.getName());
        if (!this.oe.getAndSet(true))
        {
          pj.cd().ˑ("Fabric", "Unregistering power receivers.");
          localObject1 = this.om.getContext();
          ((Context)localObject1).unregisterReceiver(this.oj);
          ((Context)localObject1).unregisterReceiver(this.oi);
        }
        Object localObject1 = new Date();
        this.nL.ˊ(new ᓕ(this, (Date)localObject1, paramThread, paramThrowable));
      }
      catch (Exception localException)
      {
        pj.cd().ˏ("Fabric", "An error occurred in the uncaught exception handler", localException);
      }
      finally
      {
        pj.cd().ˑ("Fabric", "Crashlytics completed exception processing. Invoking default exception handler.");
        this.of.uncaughtException(paramThread, paramThrowable);
        this.oh.set(false);
      }
      return;
    }
    finally {}
  }
  
  void ˊ(Thread paramThread, Throwable paramThrowable)
  {
    Date localDate = new Date();
    this.nL.ˊ(new ᓗ(this, localDate, paramThread, paramThrowable));
  }
  
  void ˋ(File[] paramArrayOfFile)
  {
    ᐸ();
    int k = paramArrayOfFile.length;
    int i = 0;
    while (i < k)
    {
      Object localObject = paramArrayOfFile[i];
      pj.cd().ˑ("Fabric", "Found invalid session part file: " + localObject);
      localObject = ᐝ((File)localObject);
      ᐳ localᐳ = new ᐳ(this, (String)localObject);
      pj.cd().ˑ("Fabric", "Deleting all part files for invalid session: " + (String)localObject);
      localObject = ˊ(localᐳ);
      int m = localObject.length;
      int j = 0;
      while (j < m)
      {
        localᐳ = localObject[j];
        pj.cd().ˑ("Fabric", "Deleting session file: " + localᐳ);
        localᐳ.delete();
        j += 1;
      }
      i += 1;
    }
  }
  
  boolean ن()
  {
    return this.oh.get();
  }
  
  void ٮ()
  {
    this.nL.ˋ(new ย(this));
  }
  
  boolean ڈ()
  {
    return ะ().length > 0;
  }
  
  boolean ڙ()
  {
    return ((Boolean)this.nL.ˊ(new ะ(this))).booleanValue();
  }
  
  File[] ะ()
  {
    return ˊ(new ऽ.ˊ("BeginSession"));
  }
  
  void າ()
  {
    ᴏ.ˊ(this.og, nX, 4, nZ);
  }
  
  void ᐳ()
  {
    this.nL.ˊ(new າ(this));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¤½
 * JD-Core Version:    0.7.0.1
 */