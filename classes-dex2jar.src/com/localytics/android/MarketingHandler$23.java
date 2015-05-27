package com.localytics.android;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class MarketingHandler$23
  extends MarketingCallable
{
  MarketingHandler$23(MarketingHandler paramMarketingHandler, Map paramMap) {}
  
  Object call(Object[] paramArrayOfObject)
  {
    if (this.val$attributes == null) {
      return null;
    }
    if (this.val$attributes.size() == 0) {
      return null;
    }
    try
    {
      paramArrayOfObject = new JSONObject();
      Iterator localIterator = this.val$attributes.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramArrayOfObject.put((String)localEntry.getKey(), (String)localEntry.getValue());
      }
      paramArrayOfObject = paramArrayOfObject.toString();
      return paramArrayOfObject;
    }
    catch (JSONException paramArrayOfObject)
    {
      Localytics.Log.w("[JavaScriptClient]: Failed to get attributes");
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.23
 * JD-Core Version:    0.7.0.1
 */