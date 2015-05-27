package o;

import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

public class akk
{
  private static final AtomicReference<abs> bIp = new AtomicReference();
  
  private static boolean Ax()
  {
    return false;
  }
  
  public static void ʻ(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (Ax()) {
      Log.wtf(paramString1, paramString2, paramThrowable);
    }
    if (ᓴ(paramString1)) {
      ((abs)bIp.get()).log(paramString1 + ":" + paramString2);
    }
  }
  
  public static void ˊ(abs paramabs)
  {
    bIp.set(paramabs);
  }
  
  public static void ˏ(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (Ax()) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
    if (ᓴ(paramString1)) {
      ((abs)bIp.get()).log(paramString1 + ":" + paramString2);
    }
  }
  
  public static void ˑ(String paramString1, String paramString2)
  {
    if (Ax()) {
      Log.d(paramString1, paramString2);
    }
    if (ᓴ(paramString1)) {
      ((abs)bIp.get()).log(paramString1 + ":" + paramString2);
    }
  }
  
  public static void ـ(String paramString1, String paramString2)
  {
    if (Ax()) {
      Log.i(paramString1, paramString2);
    }
    if (ᓴ(paramString1)) {
      ((abs)bIp.get()).log(paramString1 + ":" + paramString2);
    }
  }
  
  public static void ᐝ(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (Ax()) {
      Log.v(paramString1, paramString2, paramThrowable);
    }
    if (ᓴ(paramString1)) {
      ((abs)bIp.get()).log(paramString1 + ":" + paramString2);
    }
  }
  
  public static void ᐧ(String paramString1, String paramString2)
  {
    if (Ax()) {
      Log.w(paramString1, paramString2);
    }
    if (ᓴ(paramString1)) {
      ((abs)bIp.get()).log(paramString1 + ":" + paramString2);
    }
  }
  
  public static void ᐨ(String paramString1, String paramString2)
  {
    if (Ax()) {
      Log.e(paramString1, paramString2);
    }
    if (ᓴ(paramString1)) {
      ((abs)bIp.get()).log(paramString1 + ":" + paramString2);
    }
  }
  
  public static void ᐪ(String paramString1, String paramString2)
  {
    if (Ax()) {
      Log.v(paramString1, paramString2);
    }
    if (ᓴ(paramString1)) {
      ((abs)bIp.get()).log(paramString1 + ":" + paramString2);
    }
  }
  
  private static boolean ᓴ(String paramString)
  {
    return ("RTMP".equals(paramString)) && (bIp.get() != null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akk
 * JD-Core Version:    0.7.0.1
 */