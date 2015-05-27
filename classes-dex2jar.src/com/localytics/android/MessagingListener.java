package com.localytics.android;

public abstract interface MessagingListener
  extends BaseHandler.BaseListener
{
  public abstract void localyticsDidDismissInAppMessage();
  
  public abstract void localyticsDidDisplayInAppMessage();
  
  public abstract void localyticsWillDismissInAppMessage();
  
  public abstract void localyticsWillDisplayInAppMessage();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MessagingListener
 * JD-Core Version:    0.7.0.1
 */