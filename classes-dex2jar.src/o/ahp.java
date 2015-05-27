package o;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Path;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

@TargetApi(21)
public class ahp
  extends ahl
{
  private final AtomicInteger bFa = new AtomicInteger(0);
  private final Handler mHandler = new Handler(Looper.getMainLooper());
  
  public ahp(Context paramContext)
  {
    super(paramContext);
  }
  
  public void ˊ(View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup.addView(paramView);
    Object localObject = ˊ(this.bFa, paramViewGroup, 1);
    float f = zF();
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(paramView, View.ROTATION, new float[] { 0.0F, f });
    localObjectAnimator1.setDuration(3000L);
    localObject = ObjectAnimator.ofFloat(paramView, View.X, View.Y, (Path)localObject);
    ((ObjectAnimator)localObject).setDuration(3000L);
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(paramView, View.ALPHA, new float[] { 1.0F, 0.0F });
    localObjectAnimator2.setDuration(3000L);
    localObjectAnimator2.addListener(new ahq(this, paramViewGroup, paramView));
    paramViewGroup = ObjectAnimator.ofFloat(paramView, View.SCALE_X, new float[] { 0.2F, 1.1F });
    paramViewGroup.addListener(new ahs(this, paramView));
    AnimatorSet localAnimatorSet = new AnimatorSet();
    ArrayList localArrayList = new ArrayList();
    paramView = ObjectAnimator.ofFloat(paramView, View.SCALE_Y, new float[] { 0.2F, 1.1F });
    localArrayList.add(paramViewGroup);
    localArrayList.add(paramView);
    localAnimatorSet.setDuration(200L);
    localAnimatorSet.playTogether(localArrayList);
    localAnimatorSet.start();
    paramView = new AnimatorSet();
    paramViewGroup = new ArrayList();
    paramViewGroup.add(localObject);
    paramViewGroup.add(localObjectAnimator2);
    paramViewGroup.add(localObjectAnimator1);
    paramView.setInterpolator(new LinearInterpolator());
    paramView.playTogether(paramViewGroup);
    paramView.start();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahp
 * JD-Core Version:    0.7.0.1
 */