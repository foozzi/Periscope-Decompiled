package com.localytics.android;

import android.os.AsyncTask;

class MarketingHandler$7
  extends AsyncTask<Void, Void, String>
{
  MarketingHandler$7(MarketingHandler paramMarketingHandler, String paramString1, String paramString2, String paramString3) {}
  
  protected String doInBackground(Void... paramVarArgs)
  {
    return Localytics.getPushRegistrationId();
  }
  
  protected void onPostExecute(String paramString)
  {
    new MarketingHandler.7.1(this, paramString).execute(new Void[0]);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.7
 * JD-Core Version:    0.7.0.1
 */