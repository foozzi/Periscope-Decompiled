package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

class ᒃ
  extends Drawable
  implements Animatable
{
  private static final Interpolator ς = new LinearInterpolator();
  private static final Interpolator ϛ = new ᒃ.if(null);
  private static final Interpolator ч = new ᒃ.ˋ(null);
  private static final Interpolator ѓ = new AccelerateDecelerateInterpolator();
  private Animation mAnimation;
  private final int[] ב = { -16777216 };
  private final ArrayList<Animation> װ = new ArrayList();
  private final ᒃ.ˊ ه;
  private float ډ;
  private Resources ږ;
  private View ڗ;
  private float ە;
  private double ܕ;
  private double ণ;
  boolean จ;
  private final Drawable.Callback แ = new ᙆ(this);
  
  public ᒃ(Context paramContext, View paramView)
  {
    this.ڗ = paramView;
    this.ږ = paramContext.getResources();
    this.ه = new ᒃ.ˊ(this.แ);
    this.ه.setColors(this.ב);
    ˡ(1);
    ﹴ();
  }
  
  private void ˊ(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2)
  {
    ᒃ.ˊ localˊ = this.ه;
    float f = this.ږ.getDisplayMetrics().density;
    this.ܕ = (f * paramDouble1);
    this.ণ = (f * paramDouble2);
    localˊ.setStrokeWidth((float)paramDouble4 * f);
    localˊ.ˊ(f * paramDouble3);
    localˊ.ˮ(0);
    localˊ.ι(paramFloat1 * f, paramFloat2 * f);
    localˊ.ʼ((int)this.ܕ, (int)this.ণ);
  }
  
  private void ˊ(float paramFloat, ᒃ.ˊ paramˊ)
  {
    float f = (float)(Math.floor(paramˊ.ˤ() / 0.8F) + 1.0D);
    paramˊ.ʿ(paramˊ.ʸ() + (paramˊ.ˀ() - paramˊ.ʸ()) * paramFloat);
    paramˊ.setRotation(paramˊ.ˤ() + (f - paramˊ.ˤ()) * paramFloat);
  }
  
  private void ﹴ()
  {
    ᒃ.ˊ localˊ = this.ه;
    ᓒ localᓒ = new ᓒ(this, localˊ);
    localᓒ.setRepeatCount(-1);
    localᓒ.setRepeatMode(1);
    localᓒ.setInterpolator(ς);
    localᓒ.setAnimationListener(new ᕪ(this, localˊ));
    this.mAnimation = localᓒ;
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i = paramCanvas.save();
    paramCanvas.rotate(this.ډ, localRect.exactCenterX(), localRect.exactCenterY());
    this.ه.draw(paramCanvas, localRect);
    paramCanvas.restoreToCount(i);
  }
  
  public int getAlpha()
  {
    return this.ه.getAlpha();
  }
  
  public int getIntrinsicHeight()
  {
    return (int)this.ণ;
  }
  
  public int getIntrinsicWidth()
  {
    return (int)this.ܕ;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean isRunning()
  {
    ArrayList localArrayList = this.װ;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Animation localAnimation = (Animation)localArrayList.get(i);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded())) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public void setAlpha(int paramInt)
  {
    this.ه.setAlpha(paramInt);
  }
  
  public void setBackgroundColor(int paramInt)
  {
    this.ه.setBackgroundColor(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.ه.setColorFilter(paramColorFilter);
  }
  
  public void setColorSchemeColors(int... paramVarArgs)
  {
    this.ه.setColors(paramVarArgs);
    this.ه.ˮ(0);
  }
  
  void setRotation(float paramFloat)
  {
    this.ډ = paramFloat;
    invalidateSelf();
  }
  
  public void start()
  {
    this.mAnimation.reset();
    this.ه.ι();
    if (this.ه.ˁ() != this.ه.ʵ())
    {
      this.จ = true;
      this.mAnimation.setDuration(666L);
      this.ڗ.startAnimation(this.mAnimation);
      return;
    }
    this.ه.ˮ(0);
    this.ه.৲();
    this.mAnimation.setDuration(1333L);
    this.ڗ.startAnimation(this.mAnimation);
  }
  
  public void stop()
  {
    this.ڗ.clearAnimation();
    setRotation(0.0F);
    this.ه.ʾ(false);
    this.ه.ˮ(0);
    this.ه.৲();
  }
  
  public void ʾ(float paramFloat)
  {
    this.ه.setRotation(paramFloat);
  }
  
  public void ˡ(int paramInt)
  {
    if (paramInt == 0)
    {
      ˊ(56.0D, 56.0D, 12.5D, 3.0D, 12.0F, 6.0F);
      return;
    }
    ˊ(40.0D, 40.0D, 8.75D, 2.5D, 10.0F, 5.0F);
  }
  
  public void ͺ(float paramFloat1, float paramFloat2)
  {
    this.ه.ʿ(paramFloat1);
    this.ه.ˈ(paramFloat2);
  }
  
  public void ι(float paramFloat)
  {
    this.ه.ι(paramFloat);
  }
  
  public void ι(boolean paramBoolean)
  {
    this.ه.ʾ(paramBoolean);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */