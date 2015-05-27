package o;

import android.os.Build.VERSION;
import android.view.MotionEvent;

public class ᵧ
{
  static final ᵧ.ˏ ṛ = new ᵧ.if();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 12)
    {
      ṛ = new ᵧ.ˎ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      ṛ = new ᵧ.ˋ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 5)
    {
      ṛ = new ᵧ.ˊ();
      return;
    }
  }
  
  public static int ˊ(MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getAction() & 0xFF;
  }
  
  public static int ˊ(MotionEvent paramMotionEvent, int paramInt)
  {
    return ṛ.ˊ(paramMotionEvent, paramInt);
  }
  
  public static int ˋ(MotionEvent paramMotionEvent)
  {
    return (paramMotionEvent.getAction() & 0xFF00) >> 8;
  }
  
  public static int ˋ(MotionEvent paramMotionEvent, int paramInt)
  {
    return ṛ.ˋ(paramMotionEvent, paramInt);
  }
  
  public static float ˎ(MotionEvent paramMotionEvent, int paramInt)
  {
    return ṛ.ˎ(paramMotionEvent, paramInt);
  }
  
  public static int ˎ(MotionEvent paramMotionEvent)
  {
    return ṛ.ˎ(paramMotionEvent);
  }
  
  public static float ˏ(MotionEvent paramMotionEvent, int paramInt)
  {
    return ṛ.ˏ(paramMotionEvent, paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ§
 * JD-Core Version:    0.7.0.1
 */