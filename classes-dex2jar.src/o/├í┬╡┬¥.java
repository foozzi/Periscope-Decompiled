package o;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.util.DisplayMetrics;
import android.view.Gravity;

public class ᵝ
  extends לּ
{
  private int height;
  private final Rect kd = new Rect();
  private boolean ke;
  private boolean kf;
  private ᵝ.if kg;
  private int width;
  
  public ᵝ(Resources paramResources, Bitmap paramBitmap)
  {
    this(paramResources, new ᵝ.if(paramBitmap));
  }
  
  ᵝ(Resources paramResources, ᵝ.if paramif)
  {
    if (paramif == null) {
      throw new NullPointerException("BitmapState must not be null");
    }
    this.kg = paramif;
    int i;
    if (paramResources != null)
    {
      i = paramResources.getDisplayMetrics().densityDpi;
      if (i == 0) {
        i = 160;
      }
      paramif.ki = i;
    }
    else
    {
      i = paramif.ki;
    }
    this.width = paramif.jU.getScaledWidth(i);
    this.height = paramif.jU.getScaledHeight(i);
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.ke)
    {
      Gravity.apply(119, this.width, this.height, getBounds(), this.kd);
      this.ke = false;
    }
    paramCanvas.drawBitmap(this.kg.jU, null, this.kd, this.kg.kj);
  }
  
  public Bitmap getBitmap()
  {
    return this.kg.jU;
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return this.kg;
  }
  
  public int getIntrinsicHeight()
  {
    return this.height;
  }
  
  public int getIntrinsicWidth()
  {
    return this.width;
  }
  
  public int getOpacity()
  {
    Bitmap localBitmap = this.kg.jU;
    if ((localBitmap == null) || (localBitmap.hasAlpha()) || (this.kg.kj.getAlpha() < 255)) {
      return -3;
    }
    return -1;
  }
  
  public boolean isRunning()
  {
    return false;
  }
  
  public Drawable mutate()
  {
    if ((!this.kf) && (super.mutate() == this))
    {
      this.kg = new ᵝ.if(this.kg);
      this.kf = true;
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    this.ke = true;
  }
  
  public void setAlpha(int paramInt)
  {
    if (this.kg.kj.getAlpha() != paramInt)
    {
      this.kg.setAlpha(paramInt);
      invalidateSelf();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.kg.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  public void start() {}
  
  public void stop() {}
  
  public void ᑋ(int paramInt) {}
  
  public boolean ﾃ()
  {
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */