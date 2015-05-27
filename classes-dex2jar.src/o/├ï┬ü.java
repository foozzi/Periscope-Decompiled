package o;

import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;

class ˁ
{
  public static Object ˊ(ˁ.if paramif)
  {
    return new ˢ(paramif);
  }
  
  public static boolean ˊ(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
  
  public static Object ˎ(Object paramObject, View paramView)
  {
    return ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë
 * JD-Core Version:    0.7.0.1
 */