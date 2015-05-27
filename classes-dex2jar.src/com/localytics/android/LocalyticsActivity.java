package com.localytics.android;

import android.app.Activity;
import android.content.Intent;

public class LocalyticsActivity
  extends Activity
{
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }
  
  public void onPause()
  {
    Localytics.closeSession();
    Localytics.upload();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    Localytics.openSession();
    Localytics.handlePushNotificationOpened(getIntent());
    Localytics.upload();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.LocalyticsActivity
 * JD-Core Version:    0.7.0.1
 */