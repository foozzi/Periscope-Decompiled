package o;

import android.animation.Animator;

class ajy
  extends alv
{
  ajy(ajw paramajw) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    ajw.ˊ(this.bIe, false);
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    akj.ᔉ(ajw.ˋ(this.bIe));
    this.bIe.setVisibility(0);
    ajw.ˊ(this.bIe, true);
    ajw.ˋ(this.bIe, true);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajy
 * JD-Core Version:    0.7.0.1
 */