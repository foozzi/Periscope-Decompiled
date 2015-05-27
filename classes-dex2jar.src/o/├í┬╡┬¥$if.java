package o;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

class ᵝ$if
  extends Drawable.ConstantState
{
  private static final Paint kh = new Paint(6);
  final Bitmap jU;
  int ki;
  Paint kj = kh;
  
  public ᵝ$if(Bitmap paramBitmap)
  {
    this.jU = paramBitmap;
  }
  
  ᵝ$if(if paramif)
  {
    this(paramif.jU);
    this.ki = paramif.ki;
  }
  
  public int getChangingConfigurations()
  {
    return 0;
  }
  
  public Drawable newDrawable()
  {
    return new ᵝ(null, this);
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    return new ᵝ(paramResources, this);
  }
  
  void setAlpha(int paramInt)
  {
    ﾅ();
    this.kj.setAlpha(paramInt);
  }
  
  void setColorFilter(ColorFilter paramColorFilter)
  {
    ﾅ();
    this.kj.setColorFilter(paramColorFilter);
  }
  
  void ﾅ()
  {
    if (kh == this.kj) {
      this.kj = new Paint(6);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ.if
 * JD-Core Version:    0.7.0.1
 */