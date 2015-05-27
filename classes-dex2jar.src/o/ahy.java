package o;

import android.animation.Animator;
import android.widget.ImageView;
import tv.periscope.android.ui.main.MainActivity;
import tv.periscope.android.ui.main.MainActivity.if;

public class ahy
  extends alv
{
  public ahy(MainActivity.if paramif, boolean paramBoolean, aif paramaif) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    MainActivity.if.ˊ(this.bFU, this.bFW.bGh);
    if (this.bFV) {
      MainActivity.ˋ(this.bFU.bFT).setVisibility(4);
    }
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    if (!this.bFV)
    {
      MainActivity.ˋ(this.bFU.bFT).setVisibility(0);
      MainActivity.ˋ(this.bFU.bFT).setImageResource(this.bFW.bGh);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahy
 * JD-Core Version:    0.7.0.1
 */