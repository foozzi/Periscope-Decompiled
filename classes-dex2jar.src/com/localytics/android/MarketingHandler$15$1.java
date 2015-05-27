package com.localytics.android;

import android.os.AsyncTask;
import android.widget.Toast;
import java.util.Map;
import o.ˈ;

class MarketingHandler$15$1
  extends AsyncTask<MarketingMessage, Void, Object[]>
{
  MarketingHandler$15$1(MarketingHandler.15 param15, MarketingMessage paramMarketingMessage) {}
  
  protected Object[] doInBackground(MarketingMessage... paramVarArgs)
  {
    if (MarketingHandler.access$1200(this.this$1.this$0, paramVarArgs[0])) {
      paramVarArgs = paramVarArgs[0];
    } else {
      paramVarArgs = null;
    }
    return new Object[] { paramVarArgs, MarketingHandler.access$1300(this.this$1.this$0, null) };
  }
  
  protected void onPostExecute(Object[] paramArrayOfObject)
  {
    MarketingMessage localMarketingMessage = (MarketingMessage)paramArrayOfObject[0];
    paramArrayOfObject = (Map)paramArrayOfObject[1];
    if (localMarketingMessage == null) {}
    try
    {
      Toast.makeText(Localytics.appContext, "The downloaded campaign file is broken.", 0).show();
      return;
    }
    catch (Exception paramArrayOfObject)
    {
      Object localObject;
      Localytics.throwOrLogError(RuntimeException.class, "Localytics library threw an uncaught exception", paramArrayOfObject);
    }
    if (MarketingHandler.access$600(this.this$1.this$0) != null)
    {
      localObject = MarketingHandler.access$600(this.this$1.this$0).findFragmentByTag("marketing_dialog" + localMarketingMessage.get("campaign_id"));
      if (localObject == null) {}
    }
    else
    {
      return;
    }
    localObject = MarketingDialogFragment.newInstance();
    ((MarketingDialogFragment)localObject).setRetainInstance(false);
    ((MarketingDialogFragment)localObject).setData(localMarketingMessage).setCallbacks(this.this$1.this$0.getDialogCallbacks()).setJavaScriptClient(new JavaScriptClient(paramArrayOfObject)).show(MarketingHandler.access$600(this.this$1.this$0), "marketing_dialog" + localMarketingMessage.get("campaign_id"));
    MarketingHandler.access$600(this.this$1.this$0).executePendingTransactions();
    return;
  }
  
  protected void onPreExecute()
  {
    int i = ((Integer)this.val$marketingMessage.get("_id")).intValue();
    boolean bool = MarketingHandler.access$1000(this.this$1.this$0, this.val$marketingMessage).endsWith(".zip");
    if (!MarketingHandler.access$1100(this.this$1.this$0, i, bool)) {
      Toast.makeText(Localytics.appContext, "Downloading the campaign...\nIt'll be shown in few seconds.", 0).show();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.15.1
 * JD-Core Version:    0.7.0.1
 */