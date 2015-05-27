package o;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class ɪ
  extends Animation
{
  ɪ(ﺩ paramﺩ) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (!ﺩ.ʽ(this.ғ)) {
      i = (int)(ﺩ.ͺ(this.ғ) - Math.abs(this.ғ.ĵ));
    } else {
      i = (int)ﺩ.ͺ(this.ғ);
    }
    int j = this.ғ.ﾅ;
    int i = (int)((i - this.ғ.ﾅ) * paramFloat);
    int k = ﺩ.ᐝ(this.ғ).getTop();
    ﺩ.ˊ(this.ғ, j + i - k, false);
    ﺩ.ˋ(this.ғ).ι(1.0F - paramFloat);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Éª
 * JD-Core Version:    0.7.0.1
 */