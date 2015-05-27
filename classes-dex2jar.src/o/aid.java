package o;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.widget.ImageView;
import tv.periscope.android.ui.main.MainActivity;
import tv.periscope.android.ui.main.MainActivity.if;

class aid
  implements ValueAnimator.AnimatorUpdateListener
{
  aid(aic paramaic) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    if ((paramValueAnimator.getAnimatedFraction() >= 0.25F) && (!this.bFZ.bFY.isStarted()))
    {
      MainActivity.ᐝ(this.bFZ.bFU.bFT).setVisibility(0);
      this.bFZ.bFY.setInterpolator(alk.ᵌ(this.bFZ.bFU.bFT));
      this.bFZ.bFY.start();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aid
 * JD-Core Version:    0.7.0.1
 */