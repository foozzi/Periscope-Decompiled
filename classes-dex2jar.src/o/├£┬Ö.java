package o;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

public class ܙ
  extends Drawable
  implements Drawable.Callback
{
  private Drawable ذ;
  
  public ܙ(Drawable paramDrawable)
  {
    ʻ(paramDrawable);
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.ذ.draw(paramCanvas);
  }
  
  public int getChangingConfigurations()
  {
    return this.ذ.getChangingConfigurations();
  }
  
  public Drawable getCurrent()
  {
    return this.ذ.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return this.ذ.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return this.ذ.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    return this.ذ.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return this.ذ.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return this.ذ.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return this.ذ.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    return this.ذ.getState();
  }
  
  public Region getTransparentRegion()
  {
    return this.ذ.getTransparentRegion();
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    invalidateSelf();
  }
  
  public boolean isAutoMirrored()
  {
    return ᐪ.ˎ(this.ذ);
  }
  
  public boolean isStateful()
  {
    return this.ذ.isStateful();
  }
  
  public void jumpToCurrentState()
  {
    ᐪ.ˋ(this.ذ);
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    this.ذ.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    return this.ذ.setLevel(paramInt);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    this.ذ.setAlpha(paramInt);
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    ᐪ.ˊ(this.ذ, paramBoolean);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    this.ذ.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.ذ.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    this.ذ.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    this.ذ.setFilterBitmap(paramBoolean);
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    ᐪ.ˊ(this.ذ, paramFloat1, paramFloat2);
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ᐪ.ˊ(this.ذ, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    return this.ذ.setState(paramArrayOfInt);
  }
  
  public void setTint(int paramInt)
  {
    ᐪ.ˊ(this.ذ, paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    ᐪ.ˊ(this.ذ, paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    ᐪ.ˊ(this.ذ, paramMode);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (super.setVisible(paramBoolean1, paramBoolean2)) || (this.ذ.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    unscheduleSelf(paramRunnable);
  }
  
  public void ʻ(Drawable paramDrawable)
  {
    if (this.ذ != null) {
      this.ذ.setCallback(null);
    }
    this.ذ = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü
 * JD-Core Version:    0.7.0.1
 */