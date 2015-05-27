package o;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class rl<V>
  extends FutureTask<V>
  implements re<rp>, rm, rp
{
  final Object Xm = ᐤ(paramCallable);
  
  public rl(Runnable paramRunnable, V paramV)
  {
    super(paramRunnable, paramV);
  }
  
  public rl(Callable<V> paramCallable)
  {
    super(paramCallable);
  }
  
  public boolean cQ()
  {
    return ((re)cW()).cQ();
  }
  
  public <T extends re<rp>,  extends rm,  extends rp> T cW()
  {
    return (re)this.Xm;
  }
  
  public Collection<rp> cj()
  {
    return ((re)cW()).cj();
  }
  
  public int compareTo(Object paramObject)
  {
    return ((rm)cW()).compareTo(paramObject);
  }
  
  public boolean isFinished()
  {
    return ((rp)cW()).isFinished();
  }
  
  public void ˊ(rp paramrp)
  {
    ((re)cW()).Ꭵ(paramrp);
  }
  
  public rh є()
  {
    return ((rm)cW()).є();
  }
  
  public void ᐝ(Throwable paramThrowable)
  {
    ((rp)cW()).ᐝ(paramThrowable);
  }
  
  protected <T extends re<rp>,  extends rm,  extends rp> T ᐤ(Object paramObject)
  {
    if (rn.ᒡ(paramObject)) {
      return (re)paramObject;
    }
    return new rn();
  }
  
  public void ᔊ(boolean paramBoolean)
  {
    ((rp)cW()).ᔊ(paramBoolean);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.rl
 * JD-Core Version:    0.7.0.1
 */