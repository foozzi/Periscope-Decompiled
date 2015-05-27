package o;

import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;

public abstract class נ
  implements View.OnTouchListener
{
  private static final int ᴻ = ;
  private final נ.if ز = new נ.if();
  private final Interpolator ڐ = new AccelerateInterpolator();
  private final View ڔ;
  private Runnable ܖ;
  private float[] ܢ = { 0.0F, 0.0F };
  private float[] ა = { 3.4028235E+38F, 3.4028235E+38F };
  private int ი;
  private int Ꮀ;
  private float[] Ꮮ = { 0.0F, 0.0F };
  private float[] ᒣ = { 0.0F, 0.0F };
  private float[] ᒥ = { 3.4028235E+38F, 3.4028235E+38F };
  private boolean ᒧ;
  private boolean ᒪ;
  private boolean ᓳ;
  private boolean ᘄ;
  private boolean ᴠ;
  private boolean ᴰ;
  
  public נ(View paramView)
  {
    this.ڔ = paramView;
    paramView = Resources.getSystem().getDisplayMetrics();
    int i = (int)(paramView.density * 1575.0F + 0.5F);
    int j = (int)(paramView.density * 315.0F + 0.5F);
    ˋ(i, i);
    ˎ(j, j);
    ᵢ(1);
    ʻ(3.4028235E+38F, 3.4028235E+38F);
    ᐝ(0.2F, 0.2F);
    ˏ(1.0F, 1.0F);
    ⁱ(ᴻ);
    ﹶ(500);
    ﹺ(500);
  }
  
  private float ʼ(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 == 0.0F) {
      return 0.0F;
    }
    switch (this.ი)
    {
    default: 
      break;
    case 0: 
    case 1: 
      if (paramFloat1 < paramFloat2)
      {
        if (paramFloat1 >= 0.0F) {
          return 1.0F - paramFloat1 / paramFloat2;
        }
        if ((this.ᘄ) && (this.ი == 1)) {
          return 1.0F;
        }
      }
      break;
    case 2: 
      if (paramFloat1 < 0.0F) {
        return paramFloat1 / -paramFloat2;
      }
      break;
    }
    return 0.0F;
  }
  
  private static float ˊ(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 > paramFloat3) {
      return paramFloat3;
    }
    if (paramFloat1 < paramFloat2) {
      return paramFloat2;
    }
    return paramFloat1;
  }
  
  private float ˊ(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 = ˊ(paramFloat1 * paramFloat2, 0.0F, paramFloat3);
    paramFloat3 = ʼ(paramFloat4, paramFloat1);
    paramFloat1 = ʼ(paramFloat2 - paramFloat4, paramFloat1) - paramFloat3;
    if (paramFloat1 < 0.0F) {
      paramFloat1 = -this.ڐ.getInterpolation(-paramFloat1);
    } else if (paramFloat1 > 0.0F) {
      paramFloat1 = this.ڐ.getInterpolation(paramFloat1);
    } else {
      return 0.0F;
    }
    return ˊ(paramFloat1, -1.0F, 1.0F);
  }
  
  private float ˊ(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramFloat1 = ˊ(this.ܢ[paramInt], paramFloat2, this.ა[paramInt], paramFloat1);
    if (paramFloat1 == 0.0F) {
      return 0.0F;
    }
    float f2 = this.Ꮮ[paramInt];
    paramFloat2 = this.ᒣ[paramInt];
    float f1 = this.ᒥ[paramInt];
    paramFloat3 = f2 * paramFloat3;
    if (paramFloat1 > 0.0F) {
      return ˊ(paramFloat1 * paramFloat3, paramFloat2, f1);
    }
    return -ˊ(-paramFloat1 * paramFloat3, paramFloat2, f1);
  }
  
  private static int ˋ(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 > paramInt3) {
      return paramInt3;
    }
    if (paramInt1 < paramInt2) {
      return paramInt2;
    }
    return paramInt1;
  }
  
  private boolean Ꭵ()
  {
    נ.if localif = this.ز;
    int i = localif.ᵓ();
    int j = localif.ᵌ();
    return ((i != 0) && (ʳ(i))) || ((j != 0) && (ｰ(j)));
  }
  
  private void ᐤ()
  {
    if (this.ܖ == null) {
      this.ܖ = new נ.ˊ(this, null);
    }
    this.ᘄ = true;
    this.ᒪ = true;
    if ((!this.ᒧ) && (this.Ꮀ > 0)) {
      ﺑ.ˊ(this.ڔ, this.ܖ, this.Ꮀ);
    } else {
      this.ܖ.run();
    }
    this.ᒧ = true;
  }
  
  private void ᒡ()
  {
    if (this.ᒪ)
    {
      this.ᘄ = false;
      return;
    }
    this.ز.ᒡ();
  }
  
  private void ᒢ()
  {
    long l = SystemClock.uptimeMillis();
    MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
    this.ڔ.onTouchEvent(localMotionEvent);
    localMotionEvent.recycle();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!this.ᴠ) {
      return false;
    }
    switch (ᵧ.ˊ(paramMotionEvent))
    {
    default: 
      break;
    case 0: 
      this.ᓳ = true;
      this.ᒧ = false;
    case 2: 
      float f1 = ˊ(0, paramMotionEvent.getX(), paramView.getWidth(), this.ڔ.getWidth());
      float f2 = ˊ(1, paramMotionEvent.getY(), paramView.getHeight(), this.ڔ.getHeight());
      this.ز.ʽ(f1, f2);
      if ((!this.ᘄ) && (Ꭵ())) {
        ᐤ();
      }
      break;
    case 1: 
    case 3: 
      ᒡ();
    }
    return (this.ᴰ) && (this.ᘄ);
  }
  
  public abstract boolean ʳ(int paramInt);
  
  public נ ʻ(float paramFloat1, float paramFloat2)
  {
    this.ა[0] = paramFloat1;
    this.ა[1] = paramFloat2;
    return this;
  }
  
  public abstract void ʻ(int paramInt1, int paramInt2);
  
  public נ ˋ(float paramFloat1, float paramFloat2)
  {
    this.ᒥ[0] = (paramFloat1 / 1000.0F);
    this.ᒥ[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  public נ ˎ(float paramFloat1, float paramFloat2)
  {
    this.ᒣ[0] = (paramFloat1 / 1000.0F);
    this.ᒣ[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  public נ ˏ(float paramFloat1, float paramFloat2)
  {
    this.Ꮮ[0] = (paramFloat1 / 1000.0F);
    this.Ꮮ[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  public נ ͺ(boolean paramBoolean)
  {
    if ((this.ᴠ) && (!paramBoolean)) {
      ᒡ();
    }
    this.ᴠ = paramBoolean;
    return this;
  }
  
  public נ ᐝ(float paramFloat1, float paramFloat2)
  {
    this.ܢ[0] = paramFloat1;
    this.ܢ[1] = paramFloat2;
    return this;
  }
  
  public נ ᵢ(int paramInt)
  {
    this.ი = paramInt;
    return this;
  }
  
  public נ ⁱ(int paramInt)
  {
    this.Ꮀ = paramInt;
    return this;
  }
  
  public נ ﹶ(int paramInt)
  {
    this.ز.ʴ(paramInt);
    return this;
  }
  
  public נ ﹺ(int paramInt)
  {
    this.ز.ˆ(paramInt);
    return this;
  }
  
  public abstract boolean ｰ(int paramInt);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.× 
 * JD-Core Version:    0.7.0.1
 */