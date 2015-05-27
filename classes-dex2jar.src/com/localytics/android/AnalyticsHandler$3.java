package com.localytics.android;

class AnalyticsHandler$3
  implements Runnable
{
  AnalyticsHandler$3(AnalyticsHandler paramAnalyticsHandler) {}
  
  public void run()
  {
    if (AnalyticsHandler.access$200(this.this$0))
    {
      Localytics.Log.d("Data collection is opted out");
      return;
    }
    AnalyticsHandler.access$300(this.this$0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler.3
 * JD-Core Version:    0.7.0.1
 */