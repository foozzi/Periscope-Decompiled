package o;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

class Ị
  extends Drawable
{
  final ー ƒ;
  
  public Ị(ー paramー)
  {
    this.ƒ = paramー;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.ƒ.ʢ)
    {
      if (this.ƒ.ʡ != null) {
        this.ƒ.ʡ.draw(paramCanvas);
      }
    }
    else
    {
      if (this.ƒ.ɬ != null) {
        this.ƒ.ɬ.draw(paramCanvas);
      }
      if ((this.ƒ.ʈ != null) && (this.ƒ.Ϋ)) {
        this.ƒ.ʈ.draw(paramCanvas);
      }
    }
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»
 * JD-Core Version:    0.7.0.1
 */