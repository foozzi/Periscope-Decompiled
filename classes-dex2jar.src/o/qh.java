package o;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class qh
{
  public static final Comparator<File> VA = new qi();
  private static Boolean Vw = null;
  private static final char[] Vx = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static long Vy = -1L;
  private static Boolean Vz = null;
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
        return;
      }
      catch (RuntimeException paramCloseable)
      {
        throw paramCloseable;
      }
      catch (Exception paramCloseable) {}
    }
  }
  
  public static int ct()
  {
    return if.cw().ordinal();
  }
  
  public static long cu()
  {
    try
    {
      if (Vy == -1L)
      {
        l1 = 0L;
        String str = ˊ(new File("/proc/meminfo"), "MemTotal");
        long l2 = l1;
        if (!TextUtils.isEmpty(str))
        {
          str = str.toUpperCase(Locale.US);
          try
          {
            if (str.endsWith("KB"))
            {
              l2 = ˊ(str, "KB", 1024);
              l1 = l2;
            }
            else if (str.endsWith("MB"))
            {
              l2 = ˊ(str, "MB", 1048576);
              l1 = l2;
            }
            else if (str.endsWith("GB"))
            {
              l2 = ˊ(str, "GB", 1073741824);
              l1 = l2;
            }
            else
            {
              pj.cd().ˑ("Fabric", "Unexpected meminfo format while computing RAM: " + str);
            }
            l2 = l1;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            pj.cd().ˏ("Fabric", "Unexpected meminfo format while computing RAM: " + str, localNumberFormatException);
            l2 = l1;
          }
        }
        Vy = l2;
      }
      long l1 = Vy;
      return l1;
    }
    finally {}
  }
  
  public static boolean cv()
  {
    return (Debug.isDebuggerConnected()) || (Debug.waitingForDebugger());
  }
  
  public static String ʻ(Context paramContext, String paramString)
  {
    int i = ˊ(paramContext, paramString, "string");
    if (i > 0) {
      return paramContext.getString(i);
    }
    return "";
  }
  
  public static boolean ʼ(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  public static String ʽ(InputStream paramInputStream)
  {
    paramInputStream = new Scanner(paramInputStream).useDelimiter("\\A");
    if (paramInputStream.hasNext()) {
      return paramInputStream.next();
    }
    return "";
  }
  
  public static int ˊ(Context paramContext, String paramString1, String paramString2)
  {
    return paramContext.getResources().getIdentifier(paramString1, paramString2, ᔇ(paramContext));
  }
  
  public static int ˊ(Context paramContext, boolean paramBoolean)
  {
    float f = ᵣ(paramContext);
    if (!paramBoolean) {
      return 1;
    }
    if ((paramBoolean) && (f >= 99.0D)) {
      return 3;
    }
    if ((paramBoolean) && (f < 99.0D)) {
      return 2;
    }
    return 0;
  }
  
  static long ˊ(String paramString1, String paramString2, int paramInt)
  {
    return Long.parseLong(paramString1.split(paramString2)[0].trim()) * paramInt;
  }
  
  public static ActivityManager.RunningAppProcessInfo ˊ(String paramString, Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null)
    {
      paramContext = paramContext.iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if (localRunningAppProcessInfo.processName.equals(paramString)) {
          return localRunningAppProcessInfo;
        }
      }
    }
    return null;
  }
  
  public static String ˊ(File paramFile, String paramString)
  {
    Object localObject3 = null;
    if (paramFile.exists())
    {
      Object localObject2 = null;
      Object localObject1 = null;
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(new FileReader(paramFile), 1024);
        for (;;)
        {
          localObject1 = localBufferedReader;
          localObject2 = localBufferedReader;
          Object localObject4 = localBufferedReader.readLine();
          localObject1 = localObject3;
          if (localObject4 == null) {
            break;
          }
          localObject1 = localBufferedReader;
          localObject2 = localBufferedReader;
          localObject4 = Pattern.compile("\\s*:\\s*").split((CharSequence)localObject4, 2);
          localObject1 = localBufferedReader;
          localObject2 = localBufferedReader;
          if (localObject4.length > 1)
          {
            localObject1 = localBufferedReader;
            localObject2 = localBufferedReader;
            if (localObject4[0].equals(paramString))
            {
              localObject1 = localObject4[1];
              break;
            }
          }
        }
        return localObject1;
      }
      catch (Exception paramString)
      {
        localObject2 = localObject1;
        pj.cd().ˏ("Fabric", "Error parsing " + paramFile, paramString);
        return null;
      }
      finally
      {
        ˊ(localObject2, "Failed to close system file reader.");
      }
    }
    return null;
  }
  
  private static String ˊ(InputStream paramInputStream, String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance("SHA-1");
      byte[] arrayOfByte = new byte[1024];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramString.update(arrayOfByte, 0, i);
      }
      paramInputStream = ˌ(paramString.digest());
      return paramInputStream;
    }
    catch (Exception paramInputStream)
    {
      pj.cd().ˏ("Fabric", "Could not calculate hash for app icon.", paramInputStream);
    }
    return "";
  }
  
  private static String ˊ(byte[] paramArrayOfByte, String paramString)
  {
    MessageDigest localMessageDigest;
    try
    {
      localMessageDigest = MessageDigest.getInstance(paramString);
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      pj.cd().ˏ("Fabric", "Could not create hashing algorithm: " + paramString + ", returning empty string.", paramArrayOfByte);
      return "";
    }
    localMessageDigest.update(paramArrayOfByte);
    return ˌ(localMessageDigest.digest());
  }
  
  public static void ˊ(Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    if (יּ(paramContext)) {
      pj.cd().ˋ(paramInt, "Fabric", paramString2);
    }
  }
  
  public static void ˊ(Context paramContext, String paramString, Throwable paramThrowable)
  {
    if (יּ(paramContext)) {
      pj.cd().ᐨ("Fabric", paramString);
    }
  }
  
  public static void ˊ(Closeable paramCloseable, String paramString)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
        return;
      }
      catch (IOException paramCloseable)
      {
        pj.cd().ˏ("Fabric", paramString, paramCloseable);
      }
    }
  }
  
  public static void ˊ(Flushable paramFlushable, String paramString)
  {
    if (paramFlushable != null) {
      try
      {
        paramFlushable.flush();
        return;
      }
      catch (IOException paramFlushable)
      {
        pj.cd().ˏ("Fabric", paramString, paramFlushable);
      }
    }
  }
  
  public static void ˊ(InputStream paramInputStream, OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    for (;;)
    {
      int i = paramInputStream.read(paramArrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(paramArrayOfByte, 0, i);
    }
  }
  
  public static boolean ˊ(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (paramContext != null)
    {
      Resources localResources = paramContext.getResources();
      if (localResources != null)
      {
        int i = ˊ(paramContext, paramString, "bool");
        if (i > 0) {
          return localResources.getBoolean(i);
        }
        i = ˊ(paramContext, paramString, "string");
        if (i > 0) {
          return Boolean.parseBoolean(paramContext.getString(i));
        }
      }
    }
    return paramBoolean;
  }
  
  public static String ˌ(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length * 2];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      arrayOfChar[(i * 2)] = Vx[(j >>> 4)];
      arrayOfChar[(i * 2 + 1)] = Vx[(j & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public static String ˏ(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      return null;
    }
    Object localObject = new ArrayList();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str = paramVarArgs[i];
      if (str != null) {
        ((List)localObject).add(str.replace("-", "").toLowerCase(Locale.US));
      }
      i += 1;
    }
    Collections.sort((List)localObject);
    paramVarArgs = new StringBuilder();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramVarArgs.append((String)((Iterator)localObject).next());
    }
    paramVarArgs = paramVarArgs.toString();
    if (paramVarArgs.length() > 0) {
      return І(paramVarArgs);
    }
    return null;
  }
  
  public static String ͺ(InputStream paramInputStream)
  {
    return ˊ(paramInputStream, "SHA-1");
  }
  
  public static String І(String paramString)
  {
    return ﹳ(paramString, "SHA-1");
  }
  
  public static long і(String paramString)
  {
    paramString = new StatFs(paramString);
    long l = paramString.getBlockSize();
    return l * paramString.getBlockCount() - l * paramString.getAvailableBlocks();
  }
  
  public static boolean ՙ(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  @SuppressLint({"GetInstance"})
  public static Cipher ᐝ(int paramInt, String paramString)
  {
    if (paramString.length() < 32) {
      throw new InvalidKeyException("Key must be at least 32 bytes.");
    }
    paramString = new SecretKeySpec(paramString.getBytes(), 0, 32, "AES/ECB/PKCS7Padding");
    Cipher localCipher;
    try
    {
      localCipher = Cipher.getInstance("AES/ECB/PKCS7Padding");
    }
    catch (GeneralSecurityException paramString)
    {
      pj.cd().ˏ("Fabric", "Could not create Cipher for AES/ECB/PKCS7Padding - should never happen.", paramString);
      throw new RuntimeException(paramString);
    }
    localCipher.init(paramInt, paramString);
    return localCipher;
  }
  
  public static void ᐝ(Context paramContext, String paramString)
  {
    if (יּ(paramContext)) {
      pj.cd().ˑ("Fabric", paramString);
    }
  }
  
  public static boolean ᐟ(Context paramContext)
  {
    paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    return ("sdk".equals(Build.PRODUCT)) || ("google_sdk".equals(Build.PRODUCT)) || (paramContext == null);
  }
  
  public static boolean ᐡ(Context paramContext)
  {
    boolean bool = ᐟ(paramContext);
    paramContext = Build.TAGS;
    if ((!bool) && (paramContext != null) && (paramContext.contains("test-keys"))) {
      return true;
    }
    if (new File("/system/app/Superuser.apk").exists()) {
      return true;
    }
    paramContext = new File("/system/xbin/su");
    return (!bool) && (paramContext.exists());
  }
  
  public static int ᐪ(Context paramContext)
  {
    int j = 0;
    if (ᐟ(paramContext)) {
      j = 1;
    }
    int i = j;
    if (ᐡ(paramContext)) {
      i = j | 0x2;
    }
    j = i;
    if (cv()) {
      j = i | 0x4;
    }
    return j;
  }
  
  public static boolean ᒽ(Context paramContext)
  {
    return (paramContext.getApplicationInfo().flags & 0x2) != 0;
  }
  
  public static String ᔇ(Context paramContext)
  {
    int i = paramContext.getApplicationContext().getApplicationInfo().icon;
    if (i > 0) {
      return paramContext.getResources().getResourcePackageName(i);
    }
    return paramContext.getPackageName();
  }
  
  public static String ᔈ(Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      paramContext = paramContext.getResources().openRawResource(ᗮ(paramContext));
      localObject1 = paramContext;
      localObject2 = paramContext;
      String str = ͺ(paramContext);
      localObject1 = paramContext;
      localObject2 = paramContext;
      boolean bool = ՙ(str);
      if (bool) {
        localObject1 = null;
      } else {
        localObject1 = str;
      }
      ˊ(paramContext, "Failed to close icon input stream.");
      return localObject1;
    }
    catch (Exception paramContext)
    {
      localObject2 = localObject1;
      pj.cd().ˏ("Fabric", "Could not calculate hash for app icon.", paramContext);
    }
    finally
    {
      ˊ((Closeable)localObject2, "Failed to close icon input stream.");
    }
    return null;
  }
  
  public static SharedPreferences ᕀ(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.crashlytics.prefs", 0);
  }
  
  public static int ᗮ(Context paramContext)
  {
    return paramContext.getApplicationContext().getApplicationInfo().icon;
  }
  
  public static String ᴶ(Context paramContext)
  {
    String str = null;
    int j = ˊ(paramContext, "io.fabric.android.build_id", "string");
    int i = j;
    if (j == 0) {
      i = ˊ(paramContext, "com.crashlytics.android.build_id", "string");
    }
    if (i != 0)
    {
      str = paramContext.getResources().getString(i);
      pj.cd().ˑ("Fabric", "Build ID is: " + str);
    }
    return str;
  }
  
  public static boolean ᴸ(Context paramContext)
  {
    if (ʼ(paramContext, "android.permission.ACCESS_NETWORK_STATE"))
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      return (paramContext != null) && (paramContext.isConnectedOrConnecting());
    }
    return true;
  }
  
  public static long ᵕ(Context paramContext)
  {
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    ((ActivityManager)paramContext.getSystemService("activity")).getMemoryInfo(localMemoryInfo);
    return localMemoryInfo.availMem;
  }
  
  public static float ᵣ(Context paramContext)
  {
    paramContext = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    int i = paramContext.getIntExtra("level", -1);
    int j = paramContext.getIntExtra("scale", -1);
    return i / j;
  }
  
  public static String ⁀(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("value must be zero or greater");
    }
    return String.format(Locale.US, "%1$10s", new Object[] { Integer.valueOf(paramInt) }).replace(' ', '0');
  }
  
  public static boolean יִ(Context paramContext)
  {
    if (ᐟ(paramContext)) {
      return false;
    }
    return ((SensorManager)paramContext.getSystemService("sensor")).getDefaultSensor(8) != null;
  }
  
  public static boolean יּ(Context paramContext)
  {
    if (Vw == null) {
      Vw = Boolean.valueOf(ˊ(paramContext, "com.crashlytics.Trace", false));
    }
    return Vw.booleanValue();
  }
  
  private static String ﹳ(String paramString1, String paramString2)
  {
    return ˊ(paramString1.getBytes(), paramString2);
  }
  
  public static void ﾞ(String paramString1, String paramString2)
  {
    if (pj.ce()) {
      throw new IllegalStateException(paramString2);
    }
    pj.cd().ᐧ(paramString1, paramString2);
  }
  
  static enum if
  {
    private static final Map<String, if> VL;
    
    static
    {
      VL = new HashMap(4);
      VL.put("armeabi-v7a", VH);
      VL.put("armeabi", VG);
      VL.put("x86", VB);
    }
    
    private if() {}
    
    static if cw()
    {
      Object localObject = Build.CPU_ABI;
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        pj.cd().ˑ("Fabric", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
        return VI;
      }
      localObject = ((String)localObject).toLowerCase(Locale.US);
      if localif = (if)VL.get(localObject);
      localObject = localif;
      if (localif == null) {
        localObject = VI;
      }
      return localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qh
 * JD-Core Version:    0.7.0.1
 */