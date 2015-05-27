package o;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

class ᴶ
{
  public static void ˊ(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    paramDrawable.setHotspot(paramFloat1, paramFloat2);
  }
  
  public static void ˊ(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof ﾟ))
    {
      ᔇ.ˊ(paramDrawable, paramInt);
      return;
    }
    paramDrawable.setTint(paramInt);
  }
  
  public static void ˊ(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramDrawable.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void ˊ(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if ((paramDrawable instanceof ﾟ))
    {
      ᔇ.ˊ(paramDrawable, paramColorStateList);
      return;
    }
    paramDrawable.setTintList(paramColorStateList);
  }
  
  public static void ˊ(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof ﾟ))
    {
      ᔇ.ˊ(paramDrawable, paramMode);
      return;
    }
    paramDrawable.setTintMode(paramMode);
  }
  
  public static Drawable ᐝ(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof GradientDrawable)) {
      return new ﾟ(paramDrawable);
    }
    return paramDrawable;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´¶
 * JD-Core Version:    0.7.0.1
 */