package o;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ro
  extends ThreadPoolExecutor
{
  private static final int WD = Runtime.getRuntime().availableProcessors();
  private static final int WE = WD + 1;
  private static final int WF = WD * 2 + 1;
  
  <T extends Runnable,  extends re,  extends rp,  extends rm> ro(int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, rf<T> paramrf, ThreadFactory paramThreadFactory)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, paramrf, paramThreadFactory);
    prestartAllCoreThreads();
  }
  
  public static ro cX()
  {
    return ᖮ(WE, WF);
  }
  
  public static <T extends Runnable,  extends re,  extends rp,  extends rm> ro ᖮ(int paramInt1, int paramInt2)
  {
    return new ro(paramInt1, paramInt2, 1L, TimeUnit.SECONDS, new rf(), new if(10));
  }
  
  protected void afterExecute(Runnable paramRunnable, Throwable paramThrowable)
  {
    rp localrp = (rp)paramRunnable;
    localrp.ᔊ(true);
    localrp.ᐝ(paramThrowable);
    cY().cU();
    super.afterExecute(paramRunnable, paramThrowable);
  }
  
  public rf cY()
  {
    return (rf)super.getQueue();
  }
  
  public void execute(Runnable paramRunnable)
  {
    if (rn.ᒡ(paramRunnable))
    {
      super.execute(paramRunnable);
      return;
    }
    super.execute(newTaskFor(paramRunnable, null));
  }
  
  protected <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
  {
    return new rl(paramRunnable, paramT);
  }
  
  protected <T> RunnableFuture<T> newTaskFor(Callable<T> paramCallable)
  {
    return new rl(paramCallable);
  }
  
  public static final class if
    implements ThreadFactory
  {
    private final int Xq;
    
    public if(int paramInt)
    {
      this.Xq = paramInt;
    }
    
    public Thread newThread(Runnable paramRunnable)
    {
      paramRunnable = new Thread(paramRunnable);
      paramRunnable.setPriority(this.Xq);
      paramRunnable.setName("Queue");
      return paramRunnable;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ro
 * JD-Core Version:    0.7.0.1
 */