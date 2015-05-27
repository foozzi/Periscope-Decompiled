package com.localytics.android;

class AnalyticsHandler$9
  implements Runnable
{
  AnalyticsHandler$9(AnalyticsHandler paramAnalyticsHandler, String paramString) {}
  
  public void run()
  {
    if (AnalyticsHandler.access$000(this.this$0))
    {
      Localytics.Log.v("Registering for GCM but push disabled");
      return;
    }
    AnalyticsHandler.access$900(this.this$0, this.val$pushRegId);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler.9
 * JD-Core Version:    0.7.0.1
 */