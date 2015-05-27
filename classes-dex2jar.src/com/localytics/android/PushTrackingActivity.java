package com.localytics.android;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;

public class PushTrackingActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    Object localObject = DatapointHelper.getLocalyticsAppKeyOrNull(this);
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      Localytics.integrate(getApplicationContext(), (String)localObject);
    }
    Localytics.openSession();
    Localytics.handlePushNotificationOpened(paramBundle);
    finish();
    localObject = getPackageManager().getLaunchIntentForPackage(getPackageName());
    ((Intent)localObject).putExtras(paramBundle);
    ((Intent)localObject).addFlags(603979776);
    startActivity((Intent)localObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.PushTrackingActivity
 * JD-Core Version:    0.7.0.1
 */