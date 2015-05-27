package o;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

class ᓒ
  extends Animation
{
  ᓒ(ᒃ paramᒃ, ᒃ.ˊ paramˊ) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (this.Ꭻ.จ)
    {
      ᒃ.ˊ(this.Ꭻ, paramFloat, this.ๆ);
      return;
    }
    float f3 = (float)Math.toRadians(this.ๆ.getStrokeWidth() / (this.ๆ.ˢ() * 6.283185307179586D));
    float f4 = this.ๆ.ˀ();
    float f1 = this.ๆ.ʸ();
    float f2 = this.ๆ.ˤ();
    float f5 = ᒃ.ﹸ().getInterpolation(paramFloat);
    this.ๆ.ˈ(f4 + f5 * (0.8F - f3));
    f3 = ᒃ.ﹾ().getInterpolation(paramFloat);
    this.ๆ.ʿ(f1 + f3 * 0.8F);
    this.ๆ.setRotation(f2 + 0.25F * paramFloat);
    f1 = ᒃ.ˊ(this.Ꭻ) / 5.0F;
    this.Ꭻ.setRotation(144.0F * paramFloat + f1 * 720.0F);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */