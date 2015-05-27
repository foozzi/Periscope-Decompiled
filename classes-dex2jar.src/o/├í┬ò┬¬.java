package o;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ᕪ
  implements Animation.AnimationListener
{
  ᕪ(ᒃ paramᒃ, ᒃ.ˊ paramˊ) {}
  
  public void onAnimationEnd(Animation paramAnimation) {}
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    this.ๆ.ι();
    this.ๆ.ɩ();
    this.ๆ.ʿ(this.ๆ.ˁ());
    if (this.Ꭻ.จ)
    {
      this.Ꭻ.จ = false;
      paramAnimation.setDuration(1333L);
      this.ๆ.ʾ(false);
      return;
    }
    ᒃ.ˊ(this.Ꭻ, (ᒃ.ˊ(this.Ꭻ) + 1.0F) % 5.0F);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    ᒃ.ˊ(this.Ꭻ, 0.0F);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áª
 * JD-Core Version:    0.7.0.1
 */