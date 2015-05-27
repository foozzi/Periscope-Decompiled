package com.localytics.android;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.concurrent.Callable;

class MarketingHandler$5
  implements Callable<Boolean>
{
  MarketingHandler$5(MarketingHandler paramMarketingHandler, int paramInt) {}
  
  public Boolean call()
  {
    Cursor localCursor2 = null;
    Cursor localCursor1 = localCursor2;
    for (;;)
    {
      try
      {
        Object localObject2 = this.this$0.mProvider;
        localCursor1 = localCursor2;
        String str1 = MarketingHandler.access$500();
        localCursor1 = localCursor2;
        String str2 = Integer.toString(this.val$campaignId);
        localCursor1 = localCursor2;
        localCursor2 = ((BaseProvider)localObject2).query("marketing_displayed", new String[] { "campaign_id" }, str1, new String[] { str2 }, null);
        localCursor1 = localCursor2;
        if (!localCursor2.moveToFirst())
        {
          localCursor1 = localCursor2;
          localObject2 = new ContentValues();
          localCursor1 = localCursor2;
          ((ContentValues)localObject2).put("campaign_id", Integer.valueOf(this.val$campaignId));
          localCursor1 = localCursor2;
          if (this.this$0.mProvider.insert("marketing_displayed", (ContentValues)localObject2) <= 0L) {
            break label172;
          }
          bool = true;
          return Boolean.valueOf(bool);
        }
      }
      finally
      {
        if (localCursor1 != null) {
          localCursor1.close();
        }
      }
      return Boolean.valueOf(false);
      label172:
      boolean bool = false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.5
 * JD-Core Version:    0.7.0.1
 */