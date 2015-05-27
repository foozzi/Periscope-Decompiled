package com.localytics.android;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.widget.Toast;

class MarketingHandler$13$1
  extends AsyncTask<Void, Void, String>
{
  MarketingHandler$13$1(MarketingHandler.13 param13) {}
  
  protected String doInBackground(Void... paramVarArgs)
  {
    return Localytics.getPushRegistrationId();
  }
  
  protected void onPostExecute(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (DatapointHelper.getApiLevel() < 11) {
        ((android.text.ClipboardManager)Localytics.appContext.getSystemService("clipboard")).setText(paramString);
      } else {
        ((android.content.ClipboardManager)Localytics.appContext.getSystemService("clipboard")).setText(paramString);
      }
      Toast.makeText(Localytics.appContext, paramString + " has been copied to the clipboard.", 1).show();
      return;
    }
    Toast.makeText(Localytics.appContext, "No push token found. Please check your integration.", 1).show();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.13.1
 * JD-Core Version:    0.7.0.1
 */