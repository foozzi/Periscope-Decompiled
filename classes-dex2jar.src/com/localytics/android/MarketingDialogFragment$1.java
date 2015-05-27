package com.localytics.android;

import android.os.Handler;
import android.os.Looper;

class MarketingDialogFragment$1
  extends MarketingCallable
{
  MarketingDialogFragment$1(MarketingDialogFragment paramMarketingDialogFragment) {}
  
  Object call(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (String)paramArrayOfObject[0];
    MarketingDialogFragment.MarketingDialog.MarketingWebView localMarketingWebView = MarketingDialogFragment.MarketingDialog.access$100(MarketingDialogFragment.access$000(this.this$0));
    if (this.this$0.handleUrl(paramArrayOfObject, this.this$0.getActivity())) {
      new Handler(Looper.getMainLooper()).post(new MarketingDialogFragment.1.1(this, localMarketingWebView, paramArrayOfObject));
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingDialogFragment.1
 * JD-Core Version:    0.7.0.1
 */