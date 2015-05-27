package o;

import android.os.Handler;
import android.view.View.OnSystemUiVisibilityChangeListener;
import java.util.concurrent.TimeUnit;

class afb
  implements View.OnSystemUiVisibilityChangeListener
{
  afb(aet paramaet) {}
  
  public void onSystemUiVisibilityChange(int paramInt)
  {
    if (((paramInt & 0x1) == 0) && (!aet.ˉ(this.bBV).ˢ(aet.ˈ(this.bBV))) && (!aet.ˌ(this.bBV).xf()))
    {
      aet.ˎ(this.bBV).removeCallbacks(aet.ˍ(this.bBV));
      aet.ˎ(this.bBV).postDelayed(aet.ˍ(this.bBV), TimeUnit.SECONDS.toMillis(5L));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afb
 * JD-Core Version:    0.7.0.1
 */