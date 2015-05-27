package com.localytics.android;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.TreeMap;

final class MarketingDownloader
  extends BaseUploadThread
{
  private static final String MARKETING_URL_HTTP = "http://%s/api/v2/applications/%s/amp";
  private static final String MARKETING_URL_HTTPS = "https://%s/api/v2/applications/%s/amp";
  
  MarketingDownloader(BaseHandler paramBaseHandler, TreeMap<Integer, Object> paramTreeMap, String paramString)
  {
    super(paramBaseHandler, paramTreeMap, paramString);
  }
  
  static String downloadFile(String paramString1, String paramString2, boolean paramBoolean)
  {
    File localFile1 = new File(paramString2);
    if ((localFile1.exists()) && (!paramBoolean))
    {
      Localytics.Log.w(String.format("The file %s does exist and overwrite is turned off.", new Object[] { localFile1.getAbsolutePath() }));
      return paramString2;
    }
    File localFile2 = localFile1.getParentFile();
    if ((!localFile2.mkdirs()) && (!localFile2.isDirectory()))
    {
      Localytics.Log.w(String.format("Could not create the directory %s for saving file.", new Object[] { localFile2.getAbsolutePath() }));
      return null;
    }
    try
    {
      localFile2 = new File(String.format("%s_temp", new Object[] { paramString2 }));
      localFile2.createNewFile();
      paramString1 = new BufferedInputStream(new URL(paramString1).openConnection().getInputStream(), 16384);
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2.getPath());
      byte[] arrayOfByte = new byte[8192];
      for (;;)
      {
        int i = paramString1.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
      localFileOutputStream.close();
      if (!localFile2.renameTo(localFile1))
      {
        localFile2.delete();
        return null;
      }
      return paramString2;
    }
    catch (IOException paramString1)
    {
      Localytics.Log.w("In-app campaign not found. Creating a new one.");
    }
    return null;
  }
  
  static String getLocalFileURL(long paramLong, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getMarketingDataDirectory());
    localStringBuilder.append(File.separator);
    if (paramBoolean)
    {
      localStringBuilder.append(String.format("amp_rule_%d.zip", new Object[] { Long.valueOf(paramLong) }));
    }
    else
    {
      localStringBuilder.append(String.format("marketing_rule_%d", new Object[] { Long.valueOf(paramLong) }));
      File localFile = new File(localStringBuilder.toString());
      if (((!localFile.exists()) || (!localFile.isDirectory())) && (!localFile.mkdirs()))
      {
        Localytics.Log.w(String.format("Could not create the directory %s for saving the HTML file.", new Object[] { localFile.getAbsolutePath() }));
        return null;
      }
      localStringBuilder.append(File.separator);
      localStringBuilder.append("index.html");
    }
    return localStringBuilder.toString();
  }
  
  private static String getMarketingDataDirectory()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Localytics.appContext.getFilesDir().getAbsolutePath());
    localStringBuilder.append(File.separator);
    localStringBuilder.append(".localytics");
    localStringBuilder.append(File.separator);
    localStringBuilder.append(Localytics.apiKey);
    return localStringBuilder.toString();
  }
  
  static String getRemoteFileURL(MarketingMessage paramMarketingMessage)
  {
    String str = JsonHelper.getSafeStringFromMap(paramMarketingMessage, "devices");
    if (str.equals("tablet")) {
      return JsonHelper.getSafeStringFromMap(paramMarketingMessage, "tablet_location");
    }
    if (str.equals("both")) {
      return JsonHelper.getSafeStringFromMap(paramMarketingMessage, "phone_location");
    }
    return JsonHelper.getSafeStringFromMap(paramMarketingMessage, "phone_location");
  }
  
  int uploadData()
  {
    String str2 = getApiKey();
    BaseUploadThread.UploadType localUploadType = BaseUploadThread.UploadType.MARKETING;
    String str1;
    if (Constants.USE_HTTPS) {
      str1 = "https://%s/api/v2/applications/%s/amp";
    } else {
      str1 = "http://%s/api/v2/applications/%s/amp";
    }
    upload(localUploadType, String.format(str1, new Object[] { Constants.MARKETING_HOST, str2 }), "", 0);
    return 1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingDownloader
 * JD-Core Version:    0.7.0.1
 */