package com.localytics.android;

class AnalyticsHandler$6
  implements Runnable
{
  AnalyticsHandler$6(AnalyticsHandler paramAnalyticsHandler, String paramString) {}
  
  public void run()
  {
    if (AnalyticsHandler.access$200(this.this$0))
    {
      Localytics.Log.d("Data collection is opted out");
      return;
    }
    AnalyticsHandler.access$600(this.this$0, this.val$screen);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler.6
 * JD-Core Version:    0.7.0.1
 */