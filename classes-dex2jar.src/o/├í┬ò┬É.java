package o;

import android.view.animation.Interpolator;

public final class ᕐ
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    paramFloat -= 1.0F;
    return paramFloat * paramFloat * paramFloat * paramFloat * paramFloat + 1.0F;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */