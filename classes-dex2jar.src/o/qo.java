package o;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

final class qo
  implements ThreadFactory
{
  qo(String paramString, AtomicLong paramAtomicLong) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = Executors.defaultThreadFactory().newThread(new qp(this, paramRunnable));
    paramRunnable.setName(this.VS + this.VT.getAndIncrement());
    return paramRunnable;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qo
 * JD-Core Version:    0.7.0.1
 */