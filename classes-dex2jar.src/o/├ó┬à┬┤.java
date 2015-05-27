package o;

import android.os.Process;

class ⅴ
  extends Thread
{
  ⅴ(ΐ.if paramif, Runnable paramRunnable, String paramString)
  {
    super(paramRunnable, paramString);
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â´
 * JD-Core Version:    0.7.0.1
 */