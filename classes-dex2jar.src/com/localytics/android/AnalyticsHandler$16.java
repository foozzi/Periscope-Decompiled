package com.localytics.android;

import android.database.Cursor;
import java.util.concurrent.Callable;

class AnalyticsHandler$16
  implements Callable<String>
{
  AnalyticsHandler$16(AnalyticsHandler paramAnalyticsHandler) {}
  
  public String call()
  {
    Object localObject1 = null;
    String str = null;
    try
    {
      Cursor localCursor = this.this$0.mProvider.query("info", new String[] { "registration_id" }, null, null, null);
      localObject1 = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject1 = localCursor;
        str = localCursor.getString(localCursor.getColumnIndexOrThrow("registration_id"));
      }
      return str;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler.16
 * JD-Core Version:    0.7.0.1
 */