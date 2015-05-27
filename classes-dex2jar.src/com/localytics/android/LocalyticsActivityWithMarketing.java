package com.localytics.android;

import android.content.Intent;
import o.ι;

public class LocalyticsActivityWithMarketing
  extends ι
{
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }
  
  public void onPause()
  {
    Localytics.dismissCurrentInAppMessage();
    Localytics.clearInAppMessageDisplayActivity();
    Localytics.closeSession();
    Localytics.upload();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    Localytics.openSession();
    Localytics.setInAppMessageDisplayActivity(this);
    Localytics.handlePushNotificationOpened(getIntent());
    Localytics.handleTestMode(getIntent());
    Localytics.upload();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.LocalyticsActivityWithMarketing
 * JD-Core Version:    0.7.0.1
 */