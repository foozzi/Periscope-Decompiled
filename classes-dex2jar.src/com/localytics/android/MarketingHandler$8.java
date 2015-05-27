package com.localytics.android;

import android.support.v4.app.Fragment;
import java.util.Map;
import o.ˈ;

class MarketingHandler$8
  implements Runnable
{
  MarketingHandler$8(MarketingHandler paramMarketingHandler, MarketingMessage paramMarketingMessage, Map paramMap) {}
  
  public void run()
  {
    if (MarketingHandler.access$600(this.this$0) == null) {
      return;
    }
    try
    {
      Fragment localFragment = MarketingHandler.access$600(this.this$0).findFragmentByTag("marketing_dialog");
      if (localFragment != null) {
        return;
      }
      if (!MarketingHandler.access$700(this.this$0))
      {
        MarketingHandler.access$702(this.this$0, true);
        new MarketingHandler.8.1(this).execute(new Void[0]);
      }
      return;
    }
    catch (Exception localException)
    {
      Localytics.throwOrLogError(RuntimeException.class, "Localytics library threw an uncaught exception", localException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.8
 * JD-Core Version:    0.7.0.1
 */