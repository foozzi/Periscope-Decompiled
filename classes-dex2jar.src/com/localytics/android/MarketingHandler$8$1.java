package com.localytics.android;

import android.os.AsyncTask;
import o.ˈ;

class MarketingHandler$8$1
  extends AsyncTask<Void, Void, Boolean>
{
  MarketingHandler$8$1(MarketingHandler.8 param8) {}
  
  protected Boolean doInBackground(Void... paramVarArgs)
  {
    return Boolean.valueOf(MarketingHandler.access$800(this.this$1.this$0, ((Integer)this.this$1.val$marketingMessage.get("campaign_id")).intValue()));
  }
  
  protected void onPostExecute(Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue())
    {
      MarketingDialogFragment.newInstance().setData(this.this$1.val$marketingMessage).setCallbacks(this.this$1.this$0.getDialogCallbacks()).setJavaScriptClient(new JavaScriptClient(this.this$1.val$jsCallbacks)).show(MarketingHandler.access$600(this.this$1.this$0), "marketing_dialog");
      if (!Constants.isTestModeEnabled()) {
        ((MessagingListener)this.this$1.this$0.listeners).localyticsWillDisplayInAppMessage();
      }
      MarketingHandler.access$600(this.this$1.this$0).executePendingTransactions();
    }
    MarketingHandler.access$702(this.this$1.this$0, false);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.8.1
 * JD-Core Version:    0.7.0.1
 */