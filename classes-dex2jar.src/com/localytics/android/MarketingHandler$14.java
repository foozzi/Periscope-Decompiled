package com.localytics.android;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;

class MarketingHandler$14
  extends MarketingCallable
{
  MarketingHandler$14(MarketingHandler paramMarketingHandler) {}
  
  Object call(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = Localytics.getInstallId();
    if (!TextUtils.isEmpty(paramArrayOfObject))
    {
      if (DatapointHelper.getApiLevel() < 11) {
        ((android.text.ClipboardManager)Localytics.appContext.getSystemService("clipboard")).setText(paramArrayOfObject);
      } else {
        ((android.content.ClipboardManager)Localytics.appContext.getSystemService("clipboard")).setText(paramArrayOfObject);
      }
      Toast.makeText(Localytics.appContext, paramArrayOfObject + " has been copied to the clipboard.", 1).show();
    }
    else
    {
      Toast.makeText(Localytics.appContext, "No install id found. Please check your integration.", 1).show();
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.14
 * JD-Core Version:    0.7.0.1
 */