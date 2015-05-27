package com.localytics.android;

class MarketingHandler$16
  extends MarketingCallable
{
  MarketingHandler$16(MarketingHandler paramMarketingHandler) {}
  
  public Object call(Object[] paramArrayOfObject)
  {
    this.this$0.queueMessage(this.this$0.obtainMessage(202, paramArrayOfObject[0]));
    ((MessagingListener)this.this$0.listeners).localyticsDidDismissInAppMessage();
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.16
 * JD-Core Version:    0.7.0.1
 */