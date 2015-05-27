package o;

import java.util.LinkedList;
import java.util.concurrent.Executor;

class qz$ˋ
  implements Executor
{
  final LinkedList<Runnable> WU = new LinkedList();
  Runnable WV;
  
  protected void cP()
  {
    try
    {
      Runnable localRunnable = (Runnable)this.WU.poll();
      this.WV = localRunnable;
      if (localRunnable != null) {
        qz.THREAD_POOL_EXECUTOR.execute(this.WV);
      }
      return;
    }
    finally {}
  }
  
  public void execute(Runnable paramRunnable)
  {
    try
    {
      this.WU.offer(new rd(this, paramRunnable));
      if (this.WV == null) {
        cP();
      }
      return;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qz.Ë
 * JD-Core Version:    0.7.0.1
 */