package o;

import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class qz<Params, Progress, Result>
{
  public static final Executor SERIAL_EXECUTOR = new qz.ˋ(null);
  public static final Executor THREAD_POOL_EXECUTOR;
  private static final int WD = Runtime.getRuntime().availableProcessors();
  private static final int WE = WD + 1;
  private static final int WF = WD * 2 + 1;
  private static final ThreadFactory WG = new ra();
  private static final BlockingQueue<Runnable> WH = new LinkedBlockingQueue(128);
  private static final qz.ˊ WI = new qz.ˊ();
  private static volatile Executor WJ = SERIAL_EXECUTOR;
  private final qz.ˏ<Params, Result> WK = new rb(this);
  private final FutureTask<Result> WL = new rc(this, this.WK);
  private volatile qz.ˎ WM = qz.ˎ.WX;
  private final AtomicBoolean WN = new AtomicBoolean();
  private final AtomicBoolean WO = new AtomicBoolean();
  
  static
  {
    THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(WE, WF, 1L, TimeUnit.SECONDS, WH, WG);
  }
  
  private void ٴ(Result paramResult)
  {
    if (isCancelled()) {
      onCancelled(paramResult);
    } else {
      onPostExecute(paramResult);
    }
    this.WM = qz.ˎ.WZ;
  }
  
  private void ۦ(Result paramResult)
  {
    if (!this.WO.get()) {
      เ(paramResult);
    }
  }
  
  private Result เ(Result paramResult)
  {
    WI.obtainMessage(1, new if(this, new Object[] { paramResult })).sendToTarget();
    return paramResult;
  }
  
  public final qz.ˎ cO()
  {
    return this.WM;
  }
  
  public final boolean cancel(boolean paramBoolean)
  {
    this.WN.set(true);
    return this.WL.cancel(paramBoolean);
  }
  
  protected abstract Result doInBackground(Params... paramVarArgs);
  
  public final boolean isCancelled()
  {
    return this.WN.get();
  }
  
  protected void onCancelled() {}
  
  protected void onCancelled(Result paramResult)
  {
    onCancelled();
  }
  
  protected void onPostExecute(Result paramResult) {}
  
  protected void onPreExecute() {}
  
  protected void onProgressUpdate(Progress... paramVarArgs) {}
  
  public final qz<Params, Progress, Result> ˊ(Executor paramExecutor, Params... paramVarArgs)
  {
    if (this.WM != qz.ˎ.WX) {
      switch (1.WR[this.WM.ordinal()])
      {
      default: 
        break;
      case 1: 
        throw new IllegalStateException("Cannot execute task: the task is already running.");
      case 2: 
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
      }
    }
    this.WM = qz.ˎ.WY;
    onPreExecute();
    this.WK.Xb = paramVarArgs;
    paramExecutor.execute(this.WL);
    return this;
  }
  
  static class if<Data>
  {
    final qz WS;
    final Data[] WT;
    
    if(qz paramqz, Data... paramVarArgs)
    {
      this.WS = paramqz;
      this.WT = paramVarArgs;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qz
 * JD-Core Version:    0.7.0.1
 */