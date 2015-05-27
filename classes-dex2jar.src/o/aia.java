package o;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import tv.periscope.android.ui.main.MainActivity;
import tv.periscope.android.ui.main.MainActivity.if;

public class aia
  implements ValueAnimator.AnimatorUpdateListener
{
  public aia(MainActivity.if paramif) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f = paramValueAnimator.getAnimatedFraction();
    MainActivity.ˎ(this.bFU.bFT).setBackgroundColor(MainActivity.if.ˊ(this.bFU).ˆ(f));
    MainActivity.ˊ(this.bFU.bFT, MainActivity.if.ˋ(this.bFU).ˆ(f));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aia
 * JD-Core Version:    0.7.0.1
 */