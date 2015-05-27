package o;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

class pl
  implements pn
{
  final CountDownLatch UW = new CountDownLatch(this.UX);
  
  pl(pj parampj, int paramInt) {}
  
  public void ˏ(Exception paramException)
  {
    pj.ˎ(this.UV).ˏ(paramException);
  }
  
  public void ו(Object paramObject)
  {
    this.UW.countDown();
    if (this.UW.getCount() == 0L)
    {
      pj.ˋ(this.UV).set(true);
      pj.ˎ(this.UV).ו(this.UV);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pl
 * JD-Core Version:    0.7.0.1
 */