package o;

import android.support.v4.app.Fragment;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ˑ
  implements Animation.AnimationListener
{
  ˑ(ˉ paramˉ, Fragment paramFragment) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (this.ﹸ.mAnimatingAway != null)
    {
      this.ﹸ.mAnimatingAway = null;
      this.ᵥ.ˊ(this.ﹸ, this.ﹸ.mStateAfterAnimating, 0, 0, false);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë
 * JD-Core Version:    0.7.0.1
 */