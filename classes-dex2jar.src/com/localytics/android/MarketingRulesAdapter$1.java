package com.localytics.android;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

class MarketingRulesAdapter$1
  implements Callable<Boolean>
{
  MarketingRulesAdapter$1(MarketingRulesAdapter paramMarketingRulesAdapter) {}
  
  public Boolean call()
  {
    boolean bool = false;
    Iterator localIterator = MarketingRulesAdapter.access$000(this.this$0).getMarketingMessages().iterator();
    while (localIterator.hasNext())
    {
      MarketingMessage localMarketingMessage = (MarketingMessage)localIterator.next();
      bool = true;
      MarketingRulesAdapter.access$100(this.this$0).add(localMarketingMessage);
    }
    return Boolean.valueOf(bool);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingRulesAdapter.1
 * JD-Core Version:    0.7.0.1
 */