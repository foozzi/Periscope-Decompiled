package o;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

class ﭘ
{
  public static void ˊ(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ((OverScroller)paramObject).startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public static void ˊ(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    ((OverScroller)paramObject).fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public static Object ˋ(Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInterpolator != null) {
      return new OverScroller(paramContext, paramInterpolator);
    }
    return new OverScroller(paramContext);
  }
  
  public static boolean י(Object paramObject)
  {
    return ((OverScroller)paramObject).isFinished();
  }
  
  public static int ᵎ(Object paramObject)
  {
    return ((OverScroller)paramObject).getCurrX();
  }
  
  public static int ᵔ(Object paramObject)
  {
    return ((OverScroller)paramObject).getCurrY();
  }
  
  public static boolean ⁱ(Object paramObject)
  {
    return ((OverScroller)paramObject).computeScrollOffset();
  }
  
  public static void ﹶ(Object paramObject)
  {
    ((OverScroller)paramObject).abortAnimation();
  }
  
  public static int ﹺ(Object paramObject)
  {
    return ((OverScroller)paramObject).getFinalX();
  }
  
  public static int ｰ(Object paramObject)
  {
    return ((OverScroller)paramObject).getFinalY();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­
 * JD-Core Version:    0.7.0.1
 */