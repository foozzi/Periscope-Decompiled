package o;

import java.sql.Timestamp;
import java.util.Date;

final class jg
  implements gl
{
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    if (paramjy.U() != Timestamp.class) {
      return null;
    }
    return new jh(this, paramfl.ᐝ(Date.class));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jg
 * JD-Core Version:    0.7.0.1
 */