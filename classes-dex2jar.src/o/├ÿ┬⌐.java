package o;

import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

class ة
{
  private final ExecutorService executorService;
  
  public ة(ExecutorService paramExecutorService)
  {
    this.executorService = paramExecutorService;
  }
  
  <T> T ˊ(Callable<T> paramCallable)
  {
    try
    {
      if (Looper.getMainLooper() == Looper.myLooper())
      {
        paramCallable = this.executorService.submit(paramCallable).get(4L, TimeUnit.SECONDS);
        return paramCallable;
      }
      paramCallable = this.executorService.submit(paramCallable).get();
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      pj.cd().ˑ("Fabric", "Executor is shut down because we're handling a fatal crash.");
      return null;
    }
    catch (Exception paramCallable)
    {
      pj.cd().ˏ("Fabric", "Failed to execute task.", paramCallable);
    }
    return null;
  }
  
  Future<?> ˊ(Runnable paramRunnable)
  {
    try
    {
      paramRunnable = this.executorService.submit(new ن(this, paramRunnable));
      return paramRunnable;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      pj.cd().ˑ("Fabric", "Executor is shut down because we're handling a fatal crash.");
    }
    return null;
  }
  
  <T> Future<T> ˋ(Callable<T> paramCallable)
  {
    try
    {
      paramCallable = this.executorService.submit(new ٮ(this, paramCallable));
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      pj.cd().ˑ("Fabric", "Executor is shut down because we're handling a fatal crash.");
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ø©
 * JD-Core Version:    0.7.0.1
 */