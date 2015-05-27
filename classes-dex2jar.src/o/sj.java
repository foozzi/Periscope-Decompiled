package o;

import android.content.Context;

public class sj
  implements Runnable
{
  private final sf XK;
  private final Context dV;
  
  public sj(Context paramContext, sf paramsf)
  {
    this.dV = paramContext;
    this.XK = paramsf;
  }
  
  public void run()
  {
    try
    {
      qh.ᐝ(this.dV, "Performing time based file roll over.");
      if (!this.XK.dc()) {
        this.XK.db();
      }
      return;
    }
    catch (Exception localException)
    {
      qh.ˊ(this.dV, "Failed to roll over file", localException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sj
 * JD-Core Version:    0.7.0.1
 */