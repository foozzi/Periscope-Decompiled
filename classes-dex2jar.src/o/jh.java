package o;

import java.sql.Timestamp;
import java.util.Date;

class jh
  extends gk<Timestamp>
{
  jh(jg paramjg, gk paramgk) {}
  
  public void ˊ(kc paramkc, Timestamp paramTimestamp)
  {
    this.MU.ˊ(paramkc, paramTimestamp);
  }
  
  public Timestamp ՙ(jz paramjz)
  {
    paramjz = (Date)this.MU.ˋ(paramjz);
    if (paramjz != null) {
      return new Timestamp(paramjz.getTime());
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jh
 * JD-Core Version:    0.7.0.1
 */