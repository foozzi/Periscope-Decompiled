package o;

import android.os.Process;

public abstract class qg
  implements Runnable
{
  public final void run()
  {
    Process.setThreadPriority(10);
    ᔮ();
  }
  
  protected abstract void ᔮ();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qg
 * JD-Core Version:    0.7.0.1
 */