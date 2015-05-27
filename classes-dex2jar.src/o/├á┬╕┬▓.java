package o;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.EdgeEffect;

class า
{
  public static void ˊ(Object paramObject, int paramInt1, int paramInt2)
  {
    ((EdgeEffect)paramObject).setSize(paramInt1, paramInt2);
  }
  
  public static boolean ˊ(Object paramObject, float paramFloat)
  {
    ((EdgeEffect)paramObject).onPull(paramFloat);
    return true;
  }
  
  public static boolean ˊ(Object paramObject, Canvas paramCanvas)
  {
    return ((EdgeEffect)paramObject).draw(paramCanvas);
  }
  
  public static Object ˋ(Context paramContext)
  {
    return new EdgeEffect(paramContext);
  }
  
  public static boolean י(Object paramObject)
  {
    return ((EdgeEffect)paramObject).isFinished();
  }
  
  public static void ٴ(Object paramObject)
  {
    ((EdgeEffect)paramObject).finish();
  }
  
  public static boolean ᐝ(Object paramObject, int paramInt)
  {
    ((EdgeEffect)paramObject).onAbsorb(paramInt);
    return true;
  }
  
  public static boolean ᴵ(Object paramObject)
  {
    paramObject = (EdgeEffect)paramObject;
    paramObject.onRelease();
    return paramObject.isFinished();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸²
 * JD-Core Version:    0.7.0.1
 */