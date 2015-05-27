package o;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

class agz
  implements ValueAnimator.AnimatorUpdateListener
{
  agz(agy.if paramif, agr paramagr, View paramView) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f = ((Float)paramValueAnimator.getAnimatedValue()).floatValue();
    this.bEh.ˢ((4500.0F * f));
    this.bEh.ˡ(f);
    this.bEi.setAlpha(f);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agz
 * JD-Core Version:    0.7.0.1
 */