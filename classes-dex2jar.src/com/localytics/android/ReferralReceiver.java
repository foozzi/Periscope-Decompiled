package com.localytics.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;

public class ReferralReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      localObject = paramIntent.getExtras();
      if (localObject != null) {
        ((Bundle)localObject).containsKey(null);
      }
    }
    catch (Exception paramContext)
    {
      return;
    }
    if (!paramIntent.getAction().equals("com.android.vending.INSTALL_REFERRER")) {
      return;
    }
    Object localObject = DatapointHelper.getLocalyticsAppKeyOrNull(paramContext);
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return;
    }
    Localytics.integrate(paramContext.getApplicationContext(), (String)localObject);
    paramContext = paramIntent.getStringExtra("referrer");
    if ((paramContext == null) || (paramContext.length() == 0)) {
      return;
    }
    Localytics.setReferrerId(paramContext);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.ReferralReceiver
 * JD-Core Version:    0.7.0.1
 */