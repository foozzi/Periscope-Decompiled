package o;

import android.os.Build.VERSION;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;

public final class ผ
{
  private static final Pattern BA = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?");
  private static final Pattern BB = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
  public static final int SDK_INT = Build.VERSION.SDK_INT;
  
  public static boolean ʻ(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  public static int[] ʽ(List<Integer> paramList)
  {
    if (paramList == null) {
      return null;
    }
    int j = paramList.size();
    int[] arrayOfInt = new int[j];
    int i = 0;
    while (i < j)
    {
      arrayOfInt[i] = ((Integer)paramList.get(i)).intValue();
      i += 1;
    }
    return arrayOfInt;
  }
  
  public static <T> int ˊ(List<? extends Comparable<? super T>> paramList, T paramT, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = Collections.binarySearch(paramList, paramT);
    if (i < 0) {
      i = -(i + 2);
    } else if (!paramBoolean1) {
      i -= 1;
    }
    if (paramBoolean2) {
      return Math.max(0, i);
    }
    return i;
  }
  
  public static int ˊ(long[] paramArrayOfLong, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = Arrays.binarySearch(paramArrayOfLong, paramLong);
    if (i < 0) {
      i = -(i + 2);
    } else if (!paramBoolean1) {
      i -= 1;
    }
    if (paramBoolean2) {
      return Math.max(0, i);
    }
    return i;
  }
  
  public static long ˊ(long paramLong1, long paramLong2, long paramLong3)
  {
    if ((paramLong3 >= paramLong2) && (paramLong3 % paramLong2 == 0L)) {
      return paramLong1 / (paramLong3 / paramLong2);
    }
    if ((paramLong3 < paramLong2) && (paramLong2 % paramLong3 == 0L)) {
      return paramLong1 * (paramLong2 / paramLong3);
    }
    double d = paramLong2 / paramLong3;
    return (paramLong1 * d);
  }
  
  public static к ˊ(к paramк, int paramInt)
  {
    if (paramInt == 0) {
      return paramк;
    }
    long l;
    if (paramк.length == -1L) {
      l = -1L;
    } else {
      l = paramк.length - paramInt;
    }
    return new к(paramк.uri, paramк.tU + paramInt, l, paramк.key, paramк.flags);
  }
  
  public static void ˊ(HttpURLConnection paramHttpURLConnection, long paramLong)
  {
    if ((SDK_INT != 19) && (SDK_INT != 20)) {
      return;
    }
    try
    {
      paramHttpURLConnection = paramHttpURLConnection.getInputStream();
      if (paramLong == -1L)
      {
        int i = paramHttpURLConnection.read();
        if (i != -1) {}
      }
      else if (paramLong <= 2048L)
      {
        return;
      }
      Object localObject = paramHttpURLConnection.getClass().getName();
      if ((((String)localObject).equals("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream")) || (((String)localObject).equals("com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream")))
      {
        localObject = paramHttpURLConnection.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
        ((Method)localObject).setAccessible(true);
        ((Method)localObject).invoke(paramHttpURLConnection, new Object[0]);
      }
      return;
    }
    catch (IOException paramHttpURLConnection) {}catch (Exception paramHttpURLConnection) {}
  }
  
  public static void ˊ(long[] paramArrayOfLong, long paramLong1, long paramLong2)
  {
    if ((paramLong2 >= paramLong1) && (paramLong2 % paramLong1 == 0L))
    {
      paramLong1 = paramLong2 / paramLong1;
      i = 0;
      while (i < paramArrayOfLong.length)
      {
        paramArrayOfLong[i] /= paramLong1;
        i += 1;
      }
      return;
    }
    if ((paramLong2 < paramLong1) && (paramLong1 % paramLong2 == 0L))
    {
      paramLong1 /= paramLong2;
      i = 0;
      while (i < paramArrayOfLong.length)
      {
        paramArrayOfLong[i] *= paramLong1;
        i += 1;
      }
      return;
    }
    double d = paramLong1 / paramLong2;
    int i = 0;
    while (i < paramArrayOfLong.length)
    {
      paramArrayOfLong[i] = ((paramArrayOfLong[i] * d));
      i += 1;
    }
  }
  
  public static boolean ˊ(Object[] paramArrayOfObject, Object paramObject)
  {
    int i = 0;
    while (i < paramArrayOfObject.length)
    {
      if (ʻ(paramArrayOfObject[i], paramObject)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public static int ˋ(long[] paramArrayOfLong, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = Arrays.binarySearch(paramArrayOfLong, paramLong);
    if (i < 0) {
      i ^= 0xFFFFFFFF;
    } else if (!paramBoolean1) {
      i += 1;
    }
    if (paramBoolean2) {
      return Math.min(paramArrayOfLong.length - 1, i);
    }
    return i;
  }
  
  public static int Ꭵ(int paramInt1, int paramInt2)
  {
    return (paramInt1 + paramInt2 - 1) / paramInt2;
  }
  
  public static ExecutorService ᐣ(String paramString)
  {
    return Executors.newSingleThreadExecutor(new ภ(paramString));
  }
  
  public static String ᐩ(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return paramString.toLowerCase(Locale.US);
  }
  
  public static int ᑊ(String paramString)
  {
    int k = paramString.length();
    boolean bool;
    if (k <= 4) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    int j = 0;
    int i = 0;
    while (i < k)
    {
      j = j << 8 | paramString.charAt(i);
      i += 1;
    }
    return j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸
 * JD-Core Version:    0.7.0.1
 */