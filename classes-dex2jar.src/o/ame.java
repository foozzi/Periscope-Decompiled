package o;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.drawable.BitmapDrawable;

class ame
  implements ValueAnimator.AnimatorUpdateListener
{
  ame(amd paramamd) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    amd.ˊ(this.bMX, paramValueAnimator.getAnimatedFraction() * amd.ˊ(this.bMX).getIntrinsicWidth());
    this.bMX.invalidate();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ame
 * JD-Core Version:    0.7.0.1
 */