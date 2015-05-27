package com.localytics.android;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.widget.Toast;
import java.io.FileNotFoundException;
import java.net.HttpURLConnection;
import java.net.URL;

class MarketingHandler$7$1
  extends AsyncTask<Void, Void, String>
{
  MarketingHandler$7$1(MarketingHandler.7 param7, String paramString) {}
  
  protected String doInBackground(Void... paramVarArgs)
  {
    if (!TextUtils.isEmpty(this.val$pushRegID))
    {
      Object localObject3 = Localytics.getInstallId();
      Object localObject2 = String.format("http://pushapi.localytics.com/push_test?platform=android&type=prod&campaign=%s&creative=%s&token=%s&install_id=%s&client_ts=%s", new Object[] { this.this$1.val$campaign, this.this$1.val$creative, this.val$pushRegID, localObject3, Long.toString(Math.round(System.currentTimeMillis() / 1000.0D)) });
      Object localObject1 = null;
      paramVarArgs = null;
      try
      {
        localObject2 = (HttpURLConnection)new URL((String)localObject2).openConnection();
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).setConnectTimeout(5000);
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).setReadTimeout(5000);
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).setDoOutput(false);
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).setRequestProperty("x-install-id", (String)localObject3);
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).setRequestProperty("x-app-id", DatapointHelper.getAppVersion());
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).setRequestProperty("x-client-version", "androida_3.1.1");
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).setRequestProperty("x-app-version", DatapointHelper.getAppVersion());
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).setRequestProperty("x-customer-id", this.this$1.val$customerID);
        paramVarArgs = (Void[])localObject2;
        localObject1 = localObject2;
        ((HttpURLConnection)localObject2).getInputStream();
      }
      catch (Exception localException)
      {
        localObject1 = paramVarArgs;
        localObject3 = new StringBuilder("Unfortunately, something went wrong. Push test activation was unsuccessful.");
        localObject1 = paramVarArgs;
        if (Localytics.isLoggingEnabled())
        {
          localObject1 = paramVarArgs;
          if ((localException instanceof FileNotFoundException))
          {
            localObject1 = paramVarArgs;
            ((StringBuilder)localObject3).append("\n\nCause:\nPush registration token has not yet been processed. Please wait a few minutes and try again.");
            localObject1 = paramVarArgs;
            Localytics.Log.e("Activating push test has failed", localException);
          }
        }
        localObject1 = paramVarArgs;
        String str = ((StringBuilder)localObject3).toString();
        if (paramVarArgs != null) {
          paramVarArgs.disconnect();
        }
        return str;
      }
      finally
      {
        if (localObject1 != null) {
          ((HttpURLConnection)localObject1).disconnect();
        }
      }
    }
    return null;
  }
  
  protected void onPostExecute(String paramString)
  {
    if (paramString != null) {
      Toast.makeText(Localytics.appContext, paramString, 1).show();
    }
  }
  
  protected void onPreExecute()
  {
    if (!TextUtils.isEmpty(this.val$pushRegID))
    {
      Toast.makeText(Localytics.appContext, "Push Test Activated\nYou should receive a notification soon.", 1).show();
      return;
    }
    Toast.makeText(Localytics.appContext, "App isn't registered with GCM to receive push notifications. Please make sure that Localytics.registerPush(<PROJECT_ID>) has been called.", 1).show();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.7.1
 * JD-Core Version:    0.7.0.1
 */