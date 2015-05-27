package o;

import android.os.SystemClock;

class ν
{
  private long rf;
  private long rh;
  private boolean started;
  
  private long ˑ(long paramLong)
  {
    return SystemClock.elapsedRealtime() * 1000L - paramLong;
  }
  
  public void start()
  {
    if (!this.started)
    {
      this.started = true;
      this.rh = ˑ(this.rf);
    }
  }
  
  public void stop()
  {
    if (this.started)
    {
      this.rf = ˑ(this.rh);
      this.started = false;
    }
  }
  
  public long ƒ()
  {
    if (this.started) {
      return ˑ(this.rh);
    }
    return this.rf;
  }
  
  public void ˍ(long paramLong)
  {
    this.rf = paramLong;
    this.rh = ˑ(paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î½
 * JD-Core Version:    0.7.0.1
 */