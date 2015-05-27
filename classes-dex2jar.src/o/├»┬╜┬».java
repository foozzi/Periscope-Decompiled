package o;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.os.SystemClock;

public final class ｯ
{
  private static final double nf;
  
  static
  {
    double d;
    if (17 <= Build.VERSION.SDK_INT) {
      d = 1.0D / Math.pow(10.0D, 6.0D);
    } else {
      d = 1.0D;
    }
    nf = d;
  }
  
  public static double ˎ(long paramLong)
  {
    return (〱() - paramLong) * nf;
  }
  
  @TargetApi(17)
  public static long 〱()
  {
    if (17 <= Build.VERSION.SDK_INT) {
      return SystemClock.elapsedRealtimeNanos();
    }
    return System.currentTimeMillis();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½¯
 * JD-Core Version:    0.7.0.1
 */