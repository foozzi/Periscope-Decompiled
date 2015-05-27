package o;

import android.view.animation.AccelerateDecelerateInterpolator;

class ᒃ$if
  extends AccelerateDecelerateInterpolator
{
  public float getInterpolation(float paramFloat)
  {
    return super.getInterpolation(Math.max(0.0F, (paramFloat - 0.5F) * 2.0F));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á.if
 * JD-Core Version:    0.7.0.1
 */