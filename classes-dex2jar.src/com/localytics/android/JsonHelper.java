package com.localytics.android;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

final class JsonHelper
{
  private static Object fromJson(Object paramObject)
  {
    if (paramObject == JSONObject.NULL) {
      return null;
    }
    if ((paramObject instanceof JSONObject)) {
      return toMap((JSONObject)paramObject);
    }
    if ((paramObject instanceof JSONArray)) {
      return toList((JSONArray)paramObject);
    }
    return paramObject;
  }
  
  static Map<String, Object> getMap(JSONObject paramJSONObject, String paramString)
  {
    return toMap(paramJSONObject.getJSONObject(paramString));
  }
  
  static int getSafeIntegerFromMap(Map<String, Object> paramMap, String paramString)
  {
    int i = 0;
    paramMap = paramMap.get(paramString);
    if (paramMap == null) {
      return 0;
    }
    if ((paramMap instanceof Integer)) {
      return ((Integer)paramMap).intValue();
    }
    if ((paramMap instanceof String)) {
      i = Integer.parseInt((String)paramMap);
    }
    return i;
  }
  
  static List<Object> getSafeListFromMap(Map<String, Object> paramMap, String paramString)
  {
    Object localObject = null;
    paramString = paramMap.get(paramString);
    if (paramString == null) {
      return null;
    }
    paramMap = localObject;
    if ((paramString instanceof List)) {
      paramMap = (List)paramString;
    }
    return paramMap;
  }
  
  static Map<String, Object> getSafeMapFromMap(Map<String, Object> paramMap, String paramString)
  {
    Object localObject = null;
    paramString = paramMap.get(paramString);
    if (paramString == null) {
      return null;
    }
    paramMap = localObject;
    if ((paramString instanceof Map)) {
      paramMap = (Map)paramString;
    }
    return paramMap;
  }
  
  static String getSafeStringFromMap(Map<String, Object> paramMap, String paramString)
  {
    Object localObject = null;
    paramString = paramMap.get(paramString);
    if (paramString == null) {
      return null;
    }
    if ((paramString instanceof Integer)) {
      return Integer.toString(((Integer)paramString).intValue());
    }
    paramMap = localObject;
    if ((paramString instanceof String)) {
      paramMap = (String)paramString;
    }
    return paramMap;
  }
  
  static String getSafeStringFromValue(Object paramObject)
  {
    String str = null;
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof Integer)) {
      return Integer.toString(((Integer)paramObject).intValue());
    }
    if ((paramObject instanceof String)) {
      str = (String)paramObject;
    }
    return str;
  }
  
  static boolean isEmptyObject(JSONObject paramJSONObject)
  {
    return paramJSONObject.names() == null;
  }
  
  static Object toJSON(Object paramObject)
  {
    Object localObject1;
    if ((paramObject instanceof Map))
    {
      localObject1 = new JSONObject();
      paramObject = (Map)paramObject;
      Iterator localIterator = paramObject.keySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = localIterator.next();
        ((JSONObject)localObject1).put(localObject2.toString(), toJSON(paramObject.get(localObject2)));
      }
      return localObject1;
    }
    if ((paramObject instanceof Iterable))
    {
      localObject1 = new JSONArray();
      paramObject = ((Iterable)paramObject).iterator();
      while (paramObject.hasNext()) {
        ((JSONArray)localObject1).put(toJSON(paramObject.next()));
      }
      return localObject1;
    }
    return paramObject;
  }
  
  static List toList(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localArrayList.add(fromJson(paramJSONArray.get(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  static Map<String, Object> toMap(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, fromJson(paramJSONObject.get(str)));
    }
    return localHashMap;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.JsonHelper
 * JD-Core Version:    0.7.0.1
 */