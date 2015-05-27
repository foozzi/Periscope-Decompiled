package com.localytics.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;

public class PushReceiver
  extends BroadcastReceiver
{
  private static final int MAX_RETRIES = 3;
  private static final long RETRY_DELAY = 5000L;
  private static int numRetries = 0;
  static String retrySenderId = null;
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject = DatapointHelper.getLocalyticsAppKeyOrNull(paramContext);
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      Localytics.integrate(paramContext.getApplicationContext(), (String)localObject);
    }
    if (paramIntent.getAction().equals("com.google.android.c2dm.intent.REGISTRATION"))
    {
      Localytics.handleRegistration(paramIntent);
      return;
    }
    localObject = paramIntent.getExtras();
    paramContext = ReflectionUtils.tryInvokeStatic("com.google.android.gms.gcm.GoogleCloudMessaging", "getInstance", new Class[] { Context.class }, new Object[] { paramContext });
    if (paramContext != null)
    {
      paramContext = (String)ReflectionUtils.tryInvokeInstance(paramContext, "getMessageType", new Class[] { Intent.class }, new Object[] { paramIntent });
      if (!((Bundle)localObject).isEmpty()) {
        if (ReflectionUtils.tryGetStaticField("com.google.android.gms.gcm.GoogleCloudMessaging", "ERROR_SERVICE_NOT_AVAILABLE").equals(paramContext))
        {
          if (!TextUtils.isEmpty(retrySenderId))
          {
            numRetries += 1;
            if (numRetries <= 3)
            {
              Localytics.Log.w("GCM registration ERROR_SERVICE_NOT_AVAILABLE. Retrying in 5000 milliseconds.");
              Localytics.registerPush(retrySenderId, 5000L);
            }
            else
            {
              numRetries = 0;
            }
            retrySenderId = null;
          }
        }
        else if (ReflectionUtils.tryGetStaticField("com.google.android.gms.gcm.GoogleCloudMessaging", "MESSAGE_TYPE_MESSAGE").equals(paramContext)) {
          Localytics.handleNotificationReceived(paramIntent);
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.PushReceiver
 * JD-Core Version:    0.7.0.1
 */