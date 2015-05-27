package o;

import tv.periscope.android.ui.broadcast.ViewerActivity;

public class agh
  implements Runnable
{
  public agh(ViewerActivity paramViewerActivity) {}
  
  public void run()
  {
    if (this.bDv.isFinishing()) {
      return;
    }
    if ((ViewerActivity.ˋ(this.bDv) != null) && (ViewerActivity.ˋ(this.bDv).xZ()))
    {
      akk.ᐪ("ViewerActivity", "Buffering for more than 1000, showing loading bars.");
      ViewerActivity.ˊ(this.bDv, true, this.bDv.getString(2131099896));
    }
    ViewerActivity.ˊ(this.bDv, false);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agh
 * JD-Core Version:    0.7.0.1
 */