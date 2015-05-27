package o;

import java.util.Calendar;
import java.util.TimeZone;

public class ni$ˊ
{
  public boolean Rc;
  public long Rd;
  private final Calendar Re = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
  
  private boolean ᐝ(long paramLong1, long paramLong2)
  {
    this.Re.setTimeInMillis(paramLong1);
    int i = this.Re.get(6);
    int j = this.Re.get(1);
    this.Re.setTimeInMillis(paramLong2);
    int k = this.Re.get(6);
    int m = this.Re.get(1);
    return (i == k) && (j == m);
  }
  
  public boolean ᵣ(long paramLong)
  {
    for (;;)
    {
      try
      {
        if (paramLong - this.Rd > 21600000L)
        {
          i = 1;
          if (ᐝ(paramLong, this.Rd)) {
            break label79;
          }
          j = 1;
          if ((!this.Rc) && ((i != 0) || (j != 0)))
          {
            this.Rc = true;
            return true;
          }
          return false;
        }
      }
      finally {}
      int i = 0;
      continue;
      label79:
      int j = 0;
    }
  }
  
  public void יִ(long paramLong)
  {
    try
    {
      this.Rc = false;
      this.Rd = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ni.Ë
 * JD-Core Version:    0.7.0.1
 */