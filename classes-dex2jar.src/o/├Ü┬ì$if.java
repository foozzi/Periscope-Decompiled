package o;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

class ڍ$if
  extends ŗ
{
  private final ฯ ᒴ;
  
  public ڍ$if(Resources paramResources, ฯ paramฯ)
  {
    super(paramResources);
    this.ᒴ = paramฯ;
  }
  
  public Drawable getDrawable(int paramInt)
  {
    Drawable localDrawable = super.getDrawable(paramInt);
    if (localDrawable != null) {
      this.ᒴ.ˊ(paramInt, localDrawable);
    }
    return localDrawable;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú.if
 * JD-Core Version:    0.7.0.1
 */