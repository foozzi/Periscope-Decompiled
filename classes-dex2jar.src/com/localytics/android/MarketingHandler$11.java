package com.localytics.android;

import o.ˈ;

class MarketingHandler$11
  extends MarketingCallable
{
  MarketingHandler$11(MarketingHandler paramMarketingHandler, TestModeButton paramTestModeButton) {}
  
  Object call(Object[] paramArrayOfObject)
  {
    this.val$button.show(MarketingHandler.access$600(this.this$0), "marketing_test_mode_button");
    MarketingHandler.access$600(this.this$0).executePendingTransactions();
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.11
 * JD-Core Version:    0.7.0.1
 */