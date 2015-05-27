package o;

import android.animation.Animator;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.atomic.AtomicInteger;

class ahq
  extends alv
{
  ahq(ahp paramahp, ViewGroup paramViewGroup, View paramView) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    ahp.ˋ(this.bFj).post(new ahr(this));
    ahp.ˊ(this.bFj).decrementAndGet();
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    ahp.ˊ(this.bFj).incrementAndGet();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahq
 * JD-Core Version:    0.7.0.1
 */