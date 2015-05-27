package o;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class ΐ
  extends ThreadPoolExecutor
{
  private final AtomicInteger ji = new AtomicInteger();
  private final ΐ.ˋ jj;
  
  public ΐ(int paramInt)
  {
    this(paramInt, ΐ.ˋ.jn);
  }
  
  public ΐ(int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, ThreadFactory paramThreadFactory, ΐ.ˋ paramˋ)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, new PriorityBlockingQueue(), paramThreadFactory);
    this.jj = paramˋ;
  }
  
  public ΐ(int paramInt, ΐ.ˋ paramˋ)
  {
    this(paramInt, paramInt, 0L, TimeUnit.MILLISECONDS, new ΐ.if(), paramˋ);
  }
  
  protected void afterExecute(Runnable paramRunnable, Throwable paramThrowable)
  {
    super.afterExecute(paramRunnable, paramThrowable);
    if ((paramThrowable == null) && ((paramRunnable instanceof Future)))
    {
      paramRunnable = (Future)paramRunnable;
      if ((paramRunnable.isDone()) && (!paramRunnable.isCancelled())) {
        try
        {
          paramRunnable.get();
          return;
        }
        catch (InterruptedException paramRunnable)
        {
          this.jj.ˊ(paramRunnable);
          return;
        }
        catch (ExecutionException paramRunnable)
        {
          this.jj.ˊ(paramRunnable);
        }
      }
    }
  }
  
  protected <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
  {
    return new ΐ.ˊ(paramRunnable, paramT, this.ji.getAndIncrement());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿
 * JD-Core Version:    0.7.0.1
 */