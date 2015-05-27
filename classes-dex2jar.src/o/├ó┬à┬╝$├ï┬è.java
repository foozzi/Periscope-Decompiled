package o;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

class ⅼ$ˊ
  implements ⅼ.if
{
  public void ˊ(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ((Scroller)paramObject).startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public void ˊ(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    ((Scroller)paramObject).fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public Object ˋ(Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInterpolator != null) {
      return new Scroller(paramContext, paramInterpolator);
    }
    return new Scroller(paramContext);
  }
  
  public boolean י(Object paramObject)
  {
    return ((Scroller)paramObject).isFinished();
  }
  
  public int ᵎ(Object paramObject)
  {
    return ((Scroller)paramObject).getCurrX();
  }
  
  public int ᵔ(Object paramObject)
  {
    return ((Scroller)paramObject).getCurrY();
  }
  
  public float ᵢ(Object paramObject)
  {
    return 0.0F;
  }
  
  public boolean ⁱ(Object paramObject)
  {
    return ((Scroller)paramObject).computeScrollOffset();
  }
  
  public void ﹶ(Object paramObject)
  {
    ((Scroller)paramObject).abortAnimation();
  }
  
  public int ﹺ(Object paramObject)
  {
    return ((Scroller)paramObject).getFinalX();
  }
  
  public int ｰ(Object paramObject)
  {
    return ((Scroller)paramObject).getFinalY();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â¼.Ë
 * JD-Core Version:    0.7.0.1
 */