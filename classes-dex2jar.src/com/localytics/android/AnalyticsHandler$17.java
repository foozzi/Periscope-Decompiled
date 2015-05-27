package com.localytics.android;

import android.database.Cursor;
import java.util.concurrent.Callable;

class AnalyticsHandler$17
  implements Callable<String>
{
  AnalyticsHandler$17(AnalyticsHandler paramAnalyticsHandler, String paramString) {}
  
  public String call()
  {
    Object localObject = null;
    String str1 = null;
    try
    {
      Cursor localCursor = this.this$0.mProvider.query("identifiers", AnalyticsHandler.access$1600(), AnalyticsHandler.access$1700(), new String[] { this.val$key }, null);
      localObject = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject = localCursor;
        str1 = localCursor.getString(localCursor.getColumnIndexOrThrow("value"));
      }
      return str1;
    }
    finally
    {
      if (localObject != null) {
        localObject.close();
      }
    }
    return str2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler.17
 * JD-Core Version:    0.7.0.1
 */