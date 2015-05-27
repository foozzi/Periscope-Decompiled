package com.localytics.android;

class MarketingHandler$24
  extends MarketingCallable
{
  MarketingHandler$24(MarketingHandler paramMarketingHandler) {}
  
  Object call(Object[] paramArrayOfObject)
  {
    Localytics.setCustomDimension(((Integer)paramArrayOfObject[0]).intValue(), (String)paramArrayOfObject[1]);
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.24
 * JD-Core Version:    0.7.0.1
 */