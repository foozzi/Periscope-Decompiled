package com.localytics.android;

import java.util.Map;

class MarketingHandler$17
  extends MarketingCallable
{
  MarketingHandler$17(MarketingHandler paramMarketingHandler) {}
  
  public Object call(Object[] paramArrayOfObject)
  {
    Localytics.tagEvent((String)paramArrayOfObject[0], (Map)paramArrayOfObject[1]);
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.17
 * JD-Core Version:    0.7.0.1
 */