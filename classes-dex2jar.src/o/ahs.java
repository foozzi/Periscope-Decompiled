package o;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;

class ahs
  extends alv
{
  ahs(ahp paramahp, View paramView) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator = new AnimatorSet();
    ArrayList localArrayList = new ArrayList();
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.ɭ, View.SCALE_X, new float[] { 1.1F, 1.0F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this.ɭ, View.SCALE_Y, new float[] { 1.1F, 1.0F });
    localArrayList.add(localObjectAnimator1);
    localArrayList.add(localObjectAnimator2);
    paramAnimator.setDuration(100L);
    paramAnimator.playTogether(localArrayList);
    paramAnimator.start();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahs
 * JD-Core Version:    0.7.0.1
 */