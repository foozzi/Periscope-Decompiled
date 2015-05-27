package o;

import java.util.Date;
import java.util.concurrent.TimeUnit;

public abstract class ane
{
  public static ane ʿ(long paramLong1, long paramLong2)
  {
    return new amy(new Date(paramLong1), new Date(paramLong2));
  }
  
  public abstract Date BO();
  
  public abstract Date BP();
  
  public long ˊ(TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.convert(BP().getTime() - BO().getTime(), TimeUnit.MILLISECONDS);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ane
 * JD-Core Version:    0.7.0.1
 */