package com.localytics.android;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

class BaseProvider$1
  implements Runnable
{
  BaseProvider$1(BaseProvider paramBaseProvider) {}
  
  public void run()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      Cursor localCursor = this.this$0.mDb.rawQuery("PRAGMA incremental_vacuum(0);", null);
      boolean bool;
      do
      {
        localObject1 = localCursor;
        localObject3 = localCursor;
        bool = localCursor.moveToNext();
      } while (bool);
      return;
    }
    catch (Exception localException)
    {
      localObject3 = localObject1;
      Localytics.Log.w("Auto-vacuum error", localException);
      return;
    }
    finally
    {
      if (localObject3 != null) {
        localObject3.close();
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.BaseProvider.1
 * JD-Core Version:    0.7.0.1
 */