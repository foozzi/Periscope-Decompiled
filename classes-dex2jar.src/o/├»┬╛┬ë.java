package o;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ʻ;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public class ﾉ
  extends ﹾ
{
  final RecyclerView aL;
  final ﹾ bK = new ľ(this);
  
  public ﾉ(RecyclerView paramRecyclerView)
  {
    this.aL = paramRecyclerView;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if ((paramView instanceof RecyclerView))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.ᵖ() != null) {
        paramView.ᵖ().onInitializeAccessibilityEvent(paramAccessibilityEvent);
      }
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      return true;
    }
    if (this.aL.ᵖ() != null) {
      return this.aL.ᵖ().performAccessibilityAction(paramInt, paramBundle);
    }
    return false;
  }
  
  public void ˊ(View paramView, ﯩ paramﯩ)
  {
    super.ˊ(paramView, paramﯩ);
    paramﯩ.setClassName(RecyclerView.class.getName());
    if (this.aL.ᵖ() != null) {
      this.aL.ᵖ().ˊ(paramﯩ);
    }
  }
  
  public ﹾ ⅹ()
  {
    return this.bK;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¾
 * JD-Core Version:    0.7.0.1
 */