package o;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public abstract class ῖ<Z>
  extends ﮇ<ImageView, Z>
  implements ḟ.if
{
  public ῖ(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  public void setDrawable(Drawable paramDrawable)
  {
    ((ImageView)this.view).setImageDrawable(paramDrawable);
  }
  
  public void ˊ(Exception paramException, Drawable paramDrawable)
  {
    ((ImageView)this.view).setImageDrawable(paramDrawable);
  }
  
  public void ˊ(Z paramZ, ḟ<? super Z> paramḟ)
  {
    if ((paramḟ == null) || (!paramḟ.ˊ(paramZ, this))) {
      ᐩ(paramZ);
    }
  }
  
  public void ͺ(Drawable paramDrawable)
  {
    ((ImageView)this.view).setImageDrawable(paramDrawable);
  }
  
  protected abstract void ᐩ(Z paramZ);
  
  public Drawable ḟ()
  {
    return ((ImageView)this.view).getDrawable();
  }
  
  public void ι(Drawable paramDrawable)
  {
    ((ImageView)this.view).setImageDrawable(paramDrawable);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿
 * JD-Core Version:    0.7.0.1
 */