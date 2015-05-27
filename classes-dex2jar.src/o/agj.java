package o;

import android.os.Handler;
import android.view.View.OnSystemUiVisibilityChangeListener;
import java.util.concurrent.TimeUnit;
import tv.periscope.android.ui.broadcast.ViewerActivity;

public class agj
  implements View.OnSystemUiVisibilityChangeListener
{
  public agj(ViewerActivity paramViewerActivity) {}
  
  public void onSystemUiVisibilityChange(int paramInt)
  {
    if (((paramInt & 0x1) == 0) && (!ViewerActivity.ـ(this.bDv).ˢ(ViewerActivity.ˎ(this.bDv))) && (ViewerActivity.ᐧ(this.bDv) != null) && (!ViewerActivity.ᐧ(this.bDv).xf()))
    {
      ViewerActivity.ﹳ(this.bDv).removeCallbacks(ViewerActivity.ᐨ(this.bDv));
      ViewerActivity.ﹳ(this.bDv).postDelayed(ViewerActivity.ᐨ(this.bDv), TimeUnit.SECONDS.toMillis(5L));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agj
 * JD-Core Version:    0.7.0.1
 */