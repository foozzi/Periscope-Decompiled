package com.localytics.android;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

final class AnalyticsUploadHandler
  extends BaseUploadThread
{
  private static final String ANALYTICS_URL_HTTP = "http://%s/api/v2/applications/%s/uploads";
  private static final String ANALYTICS_URL_HTTPS = "https://%s/api/v2/uploads";
  
  AnalyticsUploadHandler(BaseHandler paramBaseHandler, TreeMap<Integer, Object> paramTreeMap, String paramString)
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
        Object localObject2 = this.mData.entrySet().iterator();
        StringBuilder localStringBuilder = new StringBuilder();
        String str = getApiKey();
        while (((Iterator)localObject2).hasNext())
        {
          localStringBuilder.append(((Map.Entry)((Iterator)localObject2).next()).getValue());
          localStringBuilder.append('\n');
        }
        localObject2 = BaseUploadThread.UploadType.ANALYTICS;
        if (Constants.USE_HTTPS) {
          str = String.format("https://%s/api/v2/uploads", new Object[] { Constants.ANALYTICS_HOST });
        } else {
          str = String.format("http://%s/api/v2/applications/%s/uploads", new Object[] { Constants.ANALYTICS_HOST, str });
        }
        i = j;
        if (upload((BaseUploadThread.UploadType)localObject2, str, localStringBuilder.toString(), 0)) {
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
 * Qualified Name:     com.localytics.android.AnalyticsUploadHandler
 * JD-Core Version:    0.7.0.1
 */