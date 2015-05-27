package o;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import java.util.Iterator;
import java.util.List;
import tv.periscope.android.ui.main.MainActivity;
import tv.periscope.android.ui.main.MainActivity.if;

public class ahz
  implements ValueAnimator.AnimatorUpdateListener
{
  public ahz(MainActivity.if paramif) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f = paramValueAnimator.getAnimatedFraction();
    paramValueAnimator = MainActivity.ˊ(this.bFU.bFT).iterator();
    while (paramValueAnimator.hasNext()) {
      ((aif)paramValueAnimator.next()).bGb.ˮ(f);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahz
 * JD-Core Version:    0.7.0.1
 */