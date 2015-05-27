package o;

import android.os.SystemClock;
import android.util.Log;

public class d
{
  private final long FQ;
  private final int FR;
  private final ﹴ<Long, Long> FS;
  
  public d()
  {
    this.FQ = 60000L;
    this.FR = 10;
    this.FS = new ﹴ(10);
  }
  
  public d(int paramInt, long paramLong)
  {
    this.FQ = paramLong;
    this.FR = paramInt;
    this.FS = new ﹴ();
  }
  
  private void ˏ(long paramLong1, long paramLong2)
  {
    int i = this.FS.size() - 1;
    while (i >= 0)
    {
      if (paramLong2 - ((Long)this.FS.valueAt(i)).longValue() > paramLong1) {
        this.FS.removeAt(i);
      }
      i -= 1;
    }
  }
  
  public Long ˊ(Long paramLong)
  {
    long l2 = SystemClock.elapsedRealtime();
    long l1 = this.FQ;
    try
    {
      while (this.FS.size() >= this.FR)
      {
        ˏ(l1, l2);
        l1 /= 2L;
        Log.w("PassiveTimedConnectionMap", "The max capacity " + this.FR + " is not enough. Current durationThreshold is: " + l1);
      }
      paramLong = (Long)this.FS.put(paramLong, Long.valueOf(l2));
      return paramLong;
    }
    finally {}
  }
  
  public boolean ˮ(long paramLong)
  {
    try
    {
      Object localObject1 = this.FS.remove(Long.valueOf(paramLong));
      boolean bool;
      if (localObject1 != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.d
 * JD-Core Version:    0.7.0.1
 */