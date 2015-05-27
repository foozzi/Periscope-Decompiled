package com.localytics.android;

import java.util.Map;

class AnalyticsHandler$5
  implements Runnable
{
  AnalyticsHandler$5(AnalyticsHandler paramAnalyticsHandler, String paramString, Map paramMap, Long paramLong) {}
  
  public void run()
  {
    if (AnalyticsHandler.access$200(this.this$0))
    {
      Localytics.Log.d("Data collection is opted out");
      return;
    }
    AnalyticsHandler.access$500(this.this$0, this.val$event, this.val$attributes, this.val$clv);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler.5
 * JD-Core Version:    0.7.0.1
 */