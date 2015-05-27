package com.localytics.android;

import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

final class ProfileUploadHandler
  extends BaseUploadThread
{
  private static final String PROFILE_URL = "https://%s/v1/apps/%s/profiles/%s";
  
  ProfileUploadHandler(BaseHandler paramBaseHandler, TreeMap<Integer, Object> paramTreeMap, String paramString)
  {
    super(paramBaseHandler, paramTreeMap, paramString);
  }
  
  int uploadData()
  {
    int j = 0;
    int i = j;
    try
    {
      if (!this.mData.isEmpty())
      {
        Iterator localIterator = this.mData.entrySet().iterator();
        StringBuilder localStringBuilder = new StringBuilder();
        String str = getApiKey();
        Object localObject1 = null;
        while (localIterator.hasNext())
        {
          Object[] arrayOfObject = (Object[])((Map.Entry)localIterator.next()).getValue();
          Object localObject3 = localObject1;
          if (localStringBuilder.length() == 0)
          {
            localObject3 = (String)arrayOfObject[0];
            localStringBuilder.append('{').append('"').append("customer_id").append('"').append(':').append('"').append((String)localObject3).append('"').append(',').append('"').append("database").append('"').append(':').append('"').append((String)arrayOfObject[1]).append('"').append(',').append('"').append("changes").append('"').append(':').append('[');
          }
          localStringBuilder.append((String)arrayOfObject[2]);
          localObject1 = localObject3;
          if (localIterator.hasNext())
          {
            localStringBuilder.append(',');
            localObject1 = localObject3;
          }
        }
        localStringBuilder.append("]}");
        i = j;
        if (upload(BaseUploadThread.UploadType.PROFILES, String.format("https://%s/v1/apps/%s/profiles/%s", new Object[] { Constants.PROFILES_HOST, str, URLEncoder.encode(localObject1, "UTF-8") }), localStringBuilder.toString(), 0)) {
          i = ((Integer)this.mData.lastKey()).intValue();
        }
      }
      return i;
    }
    finally {}
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.ProfileUploadHandler
 * JD-Core Version:    0.7.0.1
 */