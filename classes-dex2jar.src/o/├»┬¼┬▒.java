package o;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;

public class בּ
  extends לּ
{
  private boolean kf;
  private לּ mN;
  private בּ.if mO;
  
  בּ(בּ.if paramif, לּ paramלּ, Resources paramResources)
  {
    this.mO = paramif;
    if (paramלּ == null)
    {
      if (paramResources != null)
      {
        this.mN = ((לּ)בּ.if.ˊ(paramif).newDrawable(paramResources));
        return;
      }
      this.mN = ((לּ)בּ.if.ˊ(paramif).newDrawable());
      return;
    }
    this.mN = paramלּ;
  }
  
  public בּ(לּ paramלּ, int paramInt)
  {
    this(new בּ.if(paramלּ.getConstantState(), paramInt), paramלּ, null);
  }
  
  public void clearColorFilter()
  {
    this.mN.clearColorFilter();
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.mN.draw(paramCanvas);
  }
  
  @TargetApi(19)
  public int getAlpha()
  {
    return this.mN.getAlpha();
  }
  
  @TargetApi(11)
  public Drawable.Callback getCallback()
  {
    return this.mN.getCallback();
  }
  
  public int getChangingConfigurations()
  {
    return this.mN.getChangingConfigurations();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return this.mO;
  }
  
  public Drawable getCurrent()
  {
    return this.mN.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return בּ.if.ˋ(this.mO);
  }
  
  public int getIntrinsicWidth()
  {
    return בּ.if.ˋ(this.mO);
  }
  
  public int getMinimumHeight()
  {
    return this.mN.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return this.mN.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return this.mN.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return this.mN.getPadding(paramRect);
  }
  
  public void invalidateSelf()
  {
    super.invalidateSelf();
    this.mN.invalidateSelf();
  }
  
  public boolean isRunning()
  {
    return this.mN.isRunning();
  }
  
  public Drawable mutate()
  {
    if ((!this.kf) && (super.mutate() == this))
    {
      this.mN = ((לּ)this.mN.mutate());
      this.mO = new בּ.if(this.mO);
      this.kf = true;
    }
    return this;
  }
  
  public void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    super.scheduleSelf(paramRunnable, paramLong);
    this.mN.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    this.mN.setAlpha(paramInt);
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    this.mN.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setBounds(Rect paramRect)
  {
    super.setBounds(paramRect);
    this.mN.setBounds(paramRect);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    this.mN.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    this.mN.setColorFilter(paramInt, paramMode);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.mN.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    this.mN.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    this.mN.setFilterBitmap(paramBoolean);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return this.mN.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start()
  {
    this.mN.start();
  }
  
  public void stop()
  {
    this.mN.stop();
  }
  
  public void unscheduleSelf(Runnable paramRunnable)
  {
    super.unscheduleSelf(paramRunnable);
    this.mN.unscheduleSelf(paramRunnable);
  }
  
  public void ᑋ(int paramInt)
  {
    this.mN.ᑋ(paramInt);
  }
  
  public boolean ﾃ()
  {
    return this.mN.ﾃ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬±
 * JD-Core Version:    0.7.0.1
 */