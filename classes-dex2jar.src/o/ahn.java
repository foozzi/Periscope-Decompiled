package o;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.util.concurrent.atomic.AtomicInteger;

class ahn
  extends alu
{
  ahn(ahm paramahm, ViewGroup paramViewGroup, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    ahm.ˋ(this.bFd).post(new aho(this));
    ahm.ˊ(this.bFd).decrementAndGet();
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    ahm.ˊ(this.bFd).incrementAndGet();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahn
 * JD-Core Version:    0.7.0.1
 */