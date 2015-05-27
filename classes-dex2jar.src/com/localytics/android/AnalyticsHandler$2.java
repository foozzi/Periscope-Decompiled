package com.localytics.android;

import android.database.Cursor;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

class AnalyticsHandler$2
  implements Callable<Map>
{
  AnalyticsHandler$2(AnalyticsHandler paramAnalyticsHandler) {}
  
  public Map call()
  {
    Object localObject1 = null;
    HashMap localHashMap = new HashMap();
    try
    {
      Cursor localCursor = this.this$0.mProvider.query("identifiers", null, null, null, null);
      for (;;)
      {
        localObject1 = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        localObject1 = localCursor;
        localHashMap.put(localCursor.getString(localCursor.getColumnIndexOrThrow("key")), localCursor.getString(localCursor.getColumnIndexOrThrow("value")));
      }
      return localHashMap;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return localHashMap;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler.2
 * JD-Core Version:    0.7.0.1
 */