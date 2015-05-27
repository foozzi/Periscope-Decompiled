package com.localytics.android;

class MarketingHandler$12
  extends MarketingCallable
{
  MarketingHandler$12(MarketingHandler paramMarketingHandler, MarketingRulesAdapter paramMarketingRulesAdapter) {}
  
  Object call(Object[] paramArrayOfObject)
  {
    Localytics.tagEvent("Test Mode Update Data");
    MarketingHandler.access$902(this.this$0, this.val$adapter);
    this.this$0.upload(Localytics.getCustomerIdInMemory());
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.12
 * JD-Core Version:    0.7.0.1
 */