package com.localytics.android;

import o.ˈ;

class MarketingHandler$10
  extends MarketingCallable
{
  MarketingHandler$10(MarketingHandler paramMarketingHandler, MarketingRulesAdapter paramMarketingRulesAdapter, TestModeListView paramTestModeListView) {}
  
  Object call(Object[] paramArrayOfObject)
  {
    this.val$adapter.updateDataSet();
    this.val$listView.show(MarketingHandler.access$600(this.this$0), "marketing_test_mode_list");
    MarketingHandler.access$600(this.this$0).executePendingTransactions();
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.10
 * JD-Core Version:    0.7.0.1
 */