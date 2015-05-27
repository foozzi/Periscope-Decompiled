package o;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class ﹾ
{
  private static final ﹾ.ˊ ﹿ;
  private static final Object ﺘ = ﹿ.ᵣ();
  final Object ﺫ = ﹿ.ˊ(this);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16) {
      ﹿ = new ﹾ.ˋ();
    } else if (Build.VERSION.SDK_INT >= 14) {
      ﹿ = new ﹾ.if();
    } else {
      ﹿ = new ﹾ.ˎ();
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return ﹿ.ˊ(ﺘ, paramView, paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    ﹿ.ˋ(ﺘ, paramView, paramAccessibilityEvent);
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    ﹿ.ˎ(ﺘ, paramView, paramAccessibilityEvent);
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return ﹿ.ˊ(ﺘ, paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return ﹿ.ˊ(ﺘ, paramView, paramInt, paramBundle);
  }
  
  public void sendAccessibilityEvent(View paramView, int paramInt)
  {
    ﹿ.ˊ(ﺘ, paramView, paramInt);
  }
  
  public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    ﹿ.ˏ(ﺘ, paramView, paramAccessibilityEvent);
  }
  
  public void ˊ(View paramView, ﯩ paramﯩ)
  {
    ﹿ.ˊ(ﺘ, paramView, paramﯩ);
  }
  
  public ＿ ᐝ(View paramView)
  {
    return ﹿ.ˋ(ﺘ, paramView);
  }
  
  Object ᵕ()
  {
    return this.ﺫ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹¾
 * JD-Core Version:    0.7.0.1
 */