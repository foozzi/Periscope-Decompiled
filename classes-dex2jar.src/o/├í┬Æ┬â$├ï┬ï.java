package o;

import android.view.animation.AccelerateDecelerateInterpolator;

class ᒃ$ˋ
  extends AccelerateDecelerateInterpolator
{
  public float getInterpolation(float paramFloat)
  {
    return super.getInterpolation(Math.min(1.0F, 2.0F * paramFloat));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á.Ë
 * JD-Core Version:    0.7.0.1
 */