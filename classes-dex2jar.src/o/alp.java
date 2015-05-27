package o;

import android.animation.Animator;

class alp
  extends alv
{
  alp(alo paramalo) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    alo.ˊ(this.bMz, false);
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    this.bMz.setVisibility(0);
    alo.ˊ(this.bMz, true);
    alo.ˋ(this.bMz, true);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alp
 * JD-Core Version:    0.7.0.1
 */