package o;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public class ⅼ
{
  Object 亠;
  ⅼ.if 冫;
  
  private ⅼ(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14) {
      this.冫 = new ⅼ.ˎ();
    } else if (paramInt >= 9) {
      this.冫 = new ⅼ.ˋ();
    } else {
      this.冫 = new ⅼ.ˊ();
    }
    this.亠 = this.冫.ˋ(paramContext, paramInterpolator);
  }
  
  ⅼ(Context paramContext, Interpolator paramInterpolator)
  {
    this(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }
  
  public static ⅼ ˊ(Context paramContext, Interpolator paramInterpolator)
  {
    return new ⅼ(paramContext, paramInterpolator);
  }
  
  public static ⅼ ˎ(Context paramContext)
  {
    return ˊ(paramContext, null);
  }
  
  public void abortAnimation()
  {
    this.冫.ﹶ(this.亠);
  }
  
  public boolean computeScrollOffset()
  {
    return this.冫.ⁱ(this.亠);
  }
  
  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.冫.ˊ(this.亠, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public float getCurrVelocity()
  {
    return this.冫.ᵢ(this.亠);
  }
  
  public int getCurrX()
  {
    return this.冫.ᵎ(this.亠);
  }
  
  public int getCurrY()
  {
    return this.冫.ᵔ(this.亠);
  }
  
  public int getFinalX()
  {
    return this.冫.ﹺ(this.亠);
  }
  
  public int getFinalY()
  {
    return this.冫.ｰ(this.亠);
  }
  
  public boolean isFinished()
  {
    return this.冫.י(this.亠);
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.冫.ˊ(this.亠, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â¼
 * JD-Core Version:    0.7.0.1
 */