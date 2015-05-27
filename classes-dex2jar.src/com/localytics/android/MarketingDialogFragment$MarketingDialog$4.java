package com.localytics.android;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.util.Map;

class MarketingDialogFragment$MarketingDialog$4
  implements Animation.AnimationListener
{
  MarketingDialogFragment$MarketingDialog$4(MarketingDialogFragment.MarketingDialog paramMarketingDialog) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (MarketingDialogFragment.access$500(this.this$1.this$0) != null)
    {
      paramAnimation = (MarketingCallable)MarketingDialogFragment.access$500(this.this$1.this$0).get(Integer.valueOf(16));
      if ((!Constants.isTestModeEnabled()) && (paramAnimation != null)) {
        paramAnimation.call(new Object[] { MarketingDialogFragment.access$200(this.this$1.this$0) });
      }
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingDialogFragment.MarketingDialog.4
 * JD-Core Version:    0.7.0.1
 */