package com.localytics.android;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class MarketingHandler$20
  extends MarketingCallable
{
  MarketingHandler$20(MarketingHandler paramMarketingHandler) {}
  
  Object call(Object[] paramArrayOfObject)
  {
    String str1 = (String)paramArrayOfObject[0];
    Object localObject1 = (String)paramArrayOfObject[1];
    Object localObject2 = (String)paramArrayOfObject[2];
    long l1 = 0L;
    paramArrayOfObject = new HashMap();
    if (TextUtils.isEmpty(str1)) {
      Localytics.throwOrLogError(IllegalArgumentException.class, "event cannot be null or empty");
    }
    try
    {
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!MarketingHandler.access$1400().contains(localObject1)))
      {
        Iterator localIterator = JsonHelper.toMap(new JSONObject((String)localObject1)).entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          paramArrayOfObject.put(localEntry.getKey(), String.valueOf(localEntry.getValue()));
        }
      }
    }
    catch (JSONException paramArrayOfObject)
    {
      Localytics.Log.w("[JavaScriptClient]: Failed to parse the json object in tagEventNative");
      return null;
    }
    Object localObject3;
    try
    {
      long l2 = Long.valueOf((String)localObject2).longValue();
      l1 = l2;
    }
    catch (Exception localException)
    {
      try
      {
        if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (!MarketingHandler.access$1400().contains(localObject2)))
        {
          localObject2 = JsonHelper.toMap(new JSONObject((String)localObject2)).entrySet().iterator();
          while (((Iterator)localObject2).hasNext())
          {
            localObject3 = (Map.Entry)((Iterator)localObject2).next();
            paramArrayOfObject.put(((Map.Entry)localObject3).getKey(), String.valueOf(((Map.Entry)localObject3).getValue()));
          }
        }
      }
      catch (JSONException localJSONException) {}
    }
    if (localObject1 != null)
    {
      if (paramArrayOfObject.isEmpty()) {
        Localytics.Log.w("attributes is empty.  Did the caller make an error?");
      }
      if (paramArrayOfObject.size() > 50) {
        Localytics.Log.w(String.format("attributes size is %d, exceeding the maximum size of %d.  Did the caller make an error?", new Object[] { Integer.valueOf(paramArrayOfObject.size()), Integer.valueOf(50) }));
      }
      localObject1 = paramArrayOfObject.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject1).next();
        String str2 = (String)((Map.Entry)localObject3).getKey();
        localObject3 = String.valueOf(((Map.Entry)localObject3).getValue());
        if (TextUtils.isEmpty(str2)) {
          Localytics.throwOrLogError(IllegalArgumentException.class, "attributes cannot contain null or empty keys");
        }
        if (TextUtils.isEmpty((CharSequence)localObject3)) {
          Localytics.throwOrLogError(IllegalArgumentException.class, "attributes cannot contain null or empty values");
        }
      }
    }
    Localytics.tagEvent(str1, paramArrayOfObject, l1);
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingHandler.20
 * JD-Core Version:    0.7.0.1
 */