package o;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public abstract class alk
{
  @TargetApi(21)
  public static Interpolator ᖮ(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return AnimationUtils.loadInterpolator(paramContext, 17563661);
    }
    return AnimationUtils.loadInterpolator(paramContext, 17563654);
  }
  
  @TargetApi(21)
  public static Interpolator ᵌ(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return AnimationUtils.loadInterpolator(paramContext, 17563662);
    }
    return AnimationUtils.loadInterpolator(paramContext, 17563651);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alk
 * JD-Core Version:    0.7.0.1
 */