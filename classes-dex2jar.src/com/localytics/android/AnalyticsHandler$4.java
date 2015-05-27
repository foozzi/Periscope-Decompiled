package com.localytics.android;

class AnalyticsHandler$4
  implements Runnable
{
  AnalyticsHandler$4(AnalyticsHandler paramAnalyticsHandler) {}
  
  public void run()
  {
    if (AnalyticsHandler.access$200(this.this$0))
    {
      Localytics.Log.d("Data collection is opted out");
      return;
    }
    AnalyticsHandler.access$400(this.this$0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler.4
 * JD-Core Version:    0.7.0.1
 */