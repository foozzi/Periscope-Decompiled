package o;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public final class qn
{
  private static final void ˊ(String paramString, ExecutorService paramExecutorService)
  {
    ˊ(paramString, paramExecutorService, 2L, TimeUnit.SECONDS);
  }
  
  public static final void ˊ(String paramString, ExecutorService paramExecutorService, long paramLong, TimeUnit paramTimeUnit)
  {
    Runtime.getRuntime().addShutdownHook(new Thread(new qq(paramString, paramExecutorService, paramLong, paramTimeUnit), "Crashlytics Shutdown Hook for " + paramString));
  }
  
  public static ExecutorService Ӏ(String paramString)
  {
    ExecutorService localExecutorService = Executors.newSingleThreadExecutor(ᑉ(paramString));
    ˊ(paramString, localExecutorService);
    return localExecutorService;
  }
  
  public static ScheduledExecutorService ײ(String paramString)
  {
    ScheduledExecutorService localScheduledExecutorService = Executors.newSingleThreadScheduledExecutor(ᑉ(paramString));
    ˊ(paramString, localScheduledExecutorService);
    return localScheduledExecutorService;
  }
  
  public static final ThreadFactory ᑉ(String paramString)
  {
    return new qo(paramString, new AtomicLong(1L));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qn
 * JD-Core Version:    0.7.0.1
 */