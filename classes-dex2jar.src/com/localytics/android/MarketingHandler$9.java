package com.localytics.android;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

class MarketingHandler$9
  implements Callable<List>
{
  MarketingHandler$9(MarketingHandler paramMarketingHandler) {}
  
  public List call()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      Cursor localCursor = this.this$0.mProvider.query("marketing_rules", null, null, null, "campaign_id");
      for (;;)
      {
        localObject1 = localCursor;
        localObject3 = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        localObject1 = localCursor;
        localObject3 = localCursor;
        MarketingMessage localMarketingMessage = new MarketingMessage();
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("_id"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("campaign_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("campaign_id"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("expiration", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("expiration"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("display_seconds", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("display_seconds"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("display_session", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("display_session"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("version", localCursor.getString(localCursor.getColumnIndexOrThrow("version")));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("phone_location", localCursor.getString(localCursor.getColumnIndexOrThrow("phone_location")));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("phone_size_width", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("phone_size_width"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("phone_size_height", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("phone_size_height"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("tablet_location", localCursor.getString(localCursor.getColumnIndexOrThrow("tablet_location")));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("tablet_size_width", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("tablet_size_width"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("tablet_size_height", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("tablet_size_height"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("time_to_display", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("time_to_display"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("internet_required", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("internet_required"))));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("ab_test", localCursor.getString(localCursor.getColumnIndexOrThrow("ab_test")));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("rule_name", localCursor.getString(localCursor.getColumnIndexOrThrow("rule_name")));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("location", localCursor.getString(localCursor.getColumnIndexOrThrow("location")));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localMarketingMessage.put("devices", localCursor.getString(localCursor.getColumnIndexOrThrow("devices")));
        localObject1 = localCursor;
        localObject3 = localCursor;
        localArrayList.add(localMarketingMessage);
      }
      localObject3 = localArrayList;
      if (localCursor != null)
      {
        localCursor.close();
        return localArrayList;
      }
    }
    catch (Exception localException)
    {
      localObject3 = null;
      if (localObject1 != null)
      {
        localObject1.close();
        return null;
      }
    }
    finally
    {
      if (localObject3 != null) {
        ((Cursor)localObject3).close();
      }
    }
    return localObject3;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.9
 * JD-Core Version:    0.7.0.1
 */