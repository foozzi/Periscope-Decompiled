package o;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

class aiv
  implements ValueAnimator.AnimatorUpdateListener
{
  aiv(aiq paramaiq, View paramView) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    ViewGroup.LayoutParams localLayoutParams = this.bGO.getLayoutParams();
    localLayoutParams.height = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
    this.bGO.setLayoutParams(localLayoutParams);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aiv
 * JD-Core Version:    0.7.0.1
 */