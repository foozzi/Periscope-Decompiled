package o;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ﻨ
  implements Animation.AnimationListener
{
  ﻨ(ﺩ paramﺩ) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (ﺩ.ˊ(this.ғ))
    {
      ﺩ.ˋ(this.ғ).setAlpha(255);
      ﺩ.ˋ(this.ғ).start();
      if ((ﺩ.ˎ(this.ғ)) && (ﺩ.ˏ(this.ғ) != null)) {
        ﺩ.ˏ(this.ғ).ᕁ();
      }
    }
    else
    {
      ﺩ.ˋ(this.ғ).stop();
      ﺩ.ᐝ(this.ғ).setVisibility(8);
      ﺩ.ˊ(this.ғ, 255);
      if (ﺩ.ʻ(this.ғ)) {
        ﺩ.ˊ(this.ғ, 0.0F);
      } else {
        ﺩ.ˊ(this.ғ, this.ғ.ĵ - ﺩ.ʼ(this.ғ), true);
      }
    }
    ﺩ.ˋ(this.ғ, ﺩ.ᐝ(this.ғ).getTop());
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï»¨
 * JD-Core Version:    0.7.0.1
 */