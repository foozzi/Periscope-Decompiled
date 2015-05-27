package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import o.ז;
import o.ﯩ;
import o.ﹲ;
import o.ﹾ;

class ViewPager$ˎ
  extends ﹾ
{
  ViewPager$ˎ(ViewPager paramViewPager) {}
  
  private boolean ʲ()
  {
    return (ViewPager.ˊ(this.ⅹ) != null) && (ViewPager.ˊ(this.ⅹ).getCount() > 1);
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = ז.ۦ();
    paramView.setScrollable(ʲ());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.ˊ(this.ⅹ) != null))
    {
      paramView.setItemCount(ViewPager.ˊ(this.ⅹ).getCount());
      paramView.setFromIndex(ViewPager.ˋ(this.ⅹ));
      paramView.setToIndex(ViewPager.ˋ(this.ⅹ));
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      break;
    case 4096: 
      if (this.ⅹ.canScrollHorizontally(1))
      {
        this.ⅹ.setCurrentItem(ViewPager.ˋ(this.ⅹ) + 1);
        return true;
      }
      return false;
    case 8192: 
      if (this.ⅹ.canScrollHorizontally(-1))
      {
        this.ⅹ.setCurrentItem(ViewPager.ˋ(this.ⅹ) - 1);
        return true;
      }
      return false;
    }
    return false;
  }
  
  public void ˊ(View paramView, ﯩ paramﯩ)
  {
    super.ˊ(paramView, paramﯩ);
    paramﯩ.setClassName(ViewPager.class.getName());
    paramﯩ.setScrollable(ʲ());
    if (this.ⅹ.canScrollHorizontally(1)) {
      paramﯩ.addAction(4096);
    }
    if (this.ⅹ.canScrollHorizontally(-1)) {
      paramﯩ.addAction(8192);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager.Ë
 * JD-Core Version:    0.7.0.1
 */