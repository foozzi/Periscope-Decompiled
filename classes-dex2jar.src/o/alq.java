package o;

import android.animation.Animator;

class alq
  extends alv
{
  alq(alo paramalo) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    alo.ˊ(this.bMz, false);
    alo.ˋ(this.bMz, false);
    this.bMz.setVisibility(8);
    if (alo.ˊ(this.bMz)) {
      alo.ˋ(this.bMz);
    }
    if (anw.ᐨ(alo.ˎ(this.bMz)))
    {
      this.bMz.clear();
      this.bMz.ᐝ(vf.tI().נּ(alo.ˎ(this.bMz)));
      alo.ˊ(this.bMz, null);
      this.bMz.show();
    }
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    alo.ˊ(this.bMz, true);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alq
 * JD-Core Version:    0.7.0.1
 */