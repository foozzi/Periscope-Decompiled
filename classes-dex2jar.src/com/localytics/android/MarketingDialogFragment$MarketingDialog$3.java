package com.localytics.android;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.util.Map;

class MarketingDialogFragment$MarketingDialog$3
  implements Animation.AnimationListener
{
  MarketingDialogFragment$MarketingDialog$3(MarketingDialogFragment.MarketingDialog paramMarketingDialog) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    try
    {
      this.this$1.this$0.dismiss();
      return;
    }
    catch (Exception paramAnimation)
    {
      Localytics.throwOrLogError(RuntimeException.class, "Localytics library threw an uncaught exception", paramAnimation);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    if (MarketingDialogFragment.access$500(this.this$1.this$0) != null)
    {
      paramAnimation = (MarketingCallable)MarketingDialogFragment.access$500(this.this$1.this$0).get(Integer.valueOf(17));
      if ((!Constants.isTestModeEnabled()) && (paramAnimation != null)) {
        paramAnimation.call(null);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingDialogFragment.MarketingDialog.3
 * JD-Core Version:    0.7.0.1
 */