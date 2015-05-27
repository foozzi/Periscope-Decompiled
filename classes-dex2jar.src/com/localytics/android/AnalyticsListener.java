package com.localytics.android;

import java.util.Map;

public abstract interface AnalyticsListener
  extends BaseHandler.BaseListener
{
  public abstract void localyticsDidTagEvent(String paramString, Map<String, String> paramMap, long paramLong);
  
  public abstract void localyticsSessionDidOpen(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  public abstract void localyticsSessionWillClose();
  
  public abstract void localyticsSessionWillOpen(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsListener
 * JD-Core Version:    0.7.0.1
 */