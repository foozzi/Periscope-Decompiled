package o;

import java.util.concurrent.ThreadFactory;

public class ΐ$if
  implements ThreadFactory
{
  int jk = 0;
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new ⅴ(this, paramRunnable, "fifo-pool-thread-" + this.jk);
    this.jk += 1;
    return paramRunnable;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿.if
 * JD-Core Version:    0.7.0.1
 */