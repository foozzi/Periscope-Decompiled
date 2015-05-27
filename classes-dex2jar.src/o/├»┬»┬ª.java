package o;

import android.os.Build.VERSION;
import android.view.accessibility.AccessibilityEvent;

public class ﯦ
{
  private static final ﯦ.ˎ ɻ = new ﯦ.ˋ();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      ɻ = new ﯦ.ˊ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ɻ = new ﯦ.if();
      return;
    }
  }
  
  public static ז ˊ(AccessibilityEvent paramAccessibilityEvent)
  {
    return new ז(paramAccessibilityEvent);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¯¦
 * JD-Core Version:    0.7.0.1
 */