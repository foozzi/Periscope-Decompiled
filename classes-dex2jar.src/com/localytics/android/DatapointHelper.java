package com.localytics.android;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

final class DatapointHelper
{
  private static final Object[] HARDWARE_TELEPHONY = { "android.hardware.telephony" };
  private static final String INVALID_ANDROID_ID = "9774d56d682e549c";
  private static final String LEGACY_DEVICE_ID_FILE = "/localytics/device_id";
  private static final Class<?>[] STRING_CLASS_ARRAY = { String.class };
  
  private DatapointHelper()
  {
    throw new UnsupportedOperationException("This class is non-instantiable");
  }
  
  static AdvertisingInfo getAdvertisingInfo()
  {
    label96:
    for (;;)
    {
      try
      {
        Object localObject1 = Localytics.appContext;
        Object localObject2 = ReflectionUtils.tryInvokeStatic("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class }, new Object[] { localObject1 });
        if (localObject2 != null)
        {
          localObject1 = (String)ReflectionUtils.tryInvokeInstance(localObject2, "getId", null, null);
          boolean bool = ((Boolean)ReflectionUtils.tryInvokeInstance(localObject2, "isLimitAdTrackingEnabled", null, null)).booleanValue();
          if (!TextUtils.isEmpty((CharSequence)localObject1)) {
            break label96;
          }
          localObject1 = null;
          localObject1 = new AdvertisingInfo((String)localObject1, bool);
          return localObject1;
        }
      }
      catch (Exception localException)
      {
        Localytics.Log.w("Device doesn't have Google Play Services installed");
      }
      return null;
    }
  }
  
  static String getAndroidIdHashOrNull()
  {
    String str = getAndroidIdOrNull();
    if (str == null) {
      return null;
    }
    return getSha256_buggy(str);
  }
  
  static String getAndroidIdOrNull()
  {
    File localFile = new File(Localytics.appContext.getFilesDir() + "/localytics/device_id");
    if ((localFile.exists()) && (localFile.length() > 0L))
    {
      String str2 = null;
      BufferedReader localBufferedReader2 = null;
      BufferedReader localBufferedReader1 = localBufferedReader2;
      Object localObject1 = str2;
      try
      {
        char[] arrayOfChar = new char[100];
        localBufferedReader1 = localBufferedReader2;
        localObject1 = str2;
        localBufferedReader2 = new BufferedReader(new FileReader(localFile), 128);
        localBufferedReader1 = localBufferedReader2;
        localObject1 = localBufferedReader2;
        str2 = String.copyValueOf(arrayOfChar, 0, localBufferedReader2.read(arrayOfChar));
        localBufferedReader1 = localBufferedReader2;
        localObject1 = localBufferedReader2;
        localBufferedReader2.close();
        if (localBufferedReader2 != null) {}
        str1 = Settings.Secure.getString(Localytics.appContext.getContentResolver(), "android_id");
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localFileNotFoundException = localFileNotFoundException;
        localObject1 = localBufferedReader1;
        Localytics.Log.w("Caught exception", localFileNotFoundException);
        if (localBufferedReader1 != null) {
          localBufferedReader1.close();
        }
      }
      finally
      {
        if (localObject1 != null) {
          ((BufferedReader)localObject1).close();
        }
      }
    }
    String str1;
    if ((str1 == null) || (str1.toLowerCase().equals("9774d56d682e549c"))) {
      return null;
    }
    return str1;
  }
  
  static int getApiLevel()
  {
    try
    {
      i = Integer.parseInt((String)Build.VERSION.class.getField("SDK").get(null));
      return i;
    }
    catch (Exception localException1)
    {
      int i;
      Localytics.Log.w("Caught exception", localException1);
      try
      {
        i = Build.VERSION.class.getField("SDK_INT").getInt(null);
        return i;
      }
      catch (Exception localException2)
      {
        Localytics.Log.w("Caught exception", localException2);
      }
    }
    return 3;
  }
  
  static String getAppVersion()
  {
    Object localObject = Localytics.appContext.getPackageManager();
    try
    {
      localObject = ((PackageManager)localObject).getPackageInfo(Localytics.appContext.getPackageName(), 0).versionName;
      if (localObject == null)
      {
        Localytics.Log.w("versionName was null--is a versionName attribute set in the Android Manifest?");
        return "unknown";
      }
      return localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new RuntimeException(localNameNotFoundException);
    }
  }
  
  static String getFBAttribution()
  {
    Object localObject6 = null;
    Object localObject7 = null;
    Object localObject4 = Localytics.appContext.getContentResolver();
    Object localObject5 = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      localObject5 = ((ContentResolver)localObject4).query((Uri)localObject5, new String[] { "aid" }, null, null, null);
      localObject4 = localObject7;
      if (localObject5 != null)
      {
        localObject4 = localObject7;
        localObject1 = localObject5;
        localObject3 = localObject5;
        if (((Cursor)localObject5).moveToFirst())
        {
          localObject1 = localObject5;
          localObject3 = localObject5;
          localObject4 = ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndex("aid"));
        }
      }
      localObject3 = localObject4;
      if (localObject5 != null)
      {
        ((Cursor)localObject5).close();
        return localObject4;
      }
    }
    catch (Exception localException)
    {
      localObject3 = localObject1;
      Localytics.Log.w("Error reading FB attribution", localException);
      localObject3 = localObject6;
      return null;
    }
    finally
    {
      if (localObject3 != null) {
        localObject3.close();
      }
    }
    return localObject3;
  }
  
  static String getLocalyticsAppKeyOrNull(Context paramContext)
  {
    if (paramContext == null)
    {
      Localytics.Log.w("Context passed to getLocalyticsAppKeyOrNull() is NULL. Please pass a valid context.");
      return null;
    }
    try
    {
      paramContext = paramContext.getApplicationContext();
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext.metaData != null)
      {
        paramContext = paramContext.metaData.get("LOCALYTICS_APP_KEY");
        if ((paramContext instanceof String))
        {
          paramContext = (String)paramContext;
          return paramContext;
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new RuntimeException(paramContext);
    }
    return null;
  }
  
  static int getLocalyticsNotificationIcon()
  {
    try
    {
      Object localObject = Localytics.appContext.getPackageManager().getApplicationInfo(Localytics.appContext.getPackageName(), 128);
      int i;
      if (((ApplicationInfo)localObject).metaData != null)
      {
        localObject = (String)((ApplicationInfo)localObject).metaData.get("LOCALYTICS_NOTIFICATION_ICON");
        if (localObject != null)
        {
          localObject = ((String)localObject).substring(((String)localObject).lastIndexOf('/') + 1, ((String)localObject).lastIndexOf('.'));
          i = Localytics.appContext.getResources().getIdentifier((String)localObject, "drawable", Localytics.appContext.getPackageName());
          return i;
        }
      }
      localObject = Localytics.appContext.getPackageManager().getApplicationInfo(Localytics.appContext.getPackageName(), 0);
      if (((ApplicationInfo)localObject).icon != 0)
      {
        i = ((ApplicationInfo)localObject).icon;
        return i;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return 17301651;
  }
  
  static String getLocalyticsRollupKeyOrNull()
  {
    Object localObject2 = null;
    try
    {
      Object localObject3 = Localytics.appContext.getPackageManager().getApplicationInfo(Localytics.appContext.getPackageName(), 128);
      Object localObject1 = localObject2;
      if (((ApplicationInfo)localObject3).metaData != null)
      {
        localObject3 = ((ApplicationInfo)localObject3).metaData.get("LOCALYTICS_ROLLUP_KEY");
        localObject1 = localObject2;
        if ((localObject3 instanceof String)) {
          localObject1 = (String)localObject3;
        }
      }
      return localObject1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new RuntimeException(localNameNotFoundException);
    }
  }
  
  static String getManufacturer()
  {
    if (Constants.CURRENT_API_LEVEL > 3) {
      try
      {
        String str = (String)Build.class.getField("MANUFACTURER").get(null);
        return str;
      }
      catch (Exception localException)
      {
        Localytics.Log.w("Caught exception", localException);
      }
    }
    return "unknown";
  }
  
  static String getNetworkType(TelephonyManager paramTelephonyManager)
  {
    try
    {
      if (Localytics.appContext.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", Localytics.appContext.getPackageName()) == 0)
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)Localytics.appContext.getSystemService("connectivity")).getNetworkInfo(1);
        if (localNetworkInfo != null)
        {
          boolean bool = localNetworkInfo.isConnectedOrConnecting();
          if (bool) {
            return "wifi";
          }
        }
      }
      else
      {
        Localytics.Log.w("Application does not have one more more of the following permissions: ACCESS_WIFI_STATE. Determining Wi-Fi connectivity is unavailable");
      }
    }
    catch (SecurityException localSecurityException)
    {
      Localytics.Log.w("Application does not have the permission ACCESS_NETWORK_STATE. Determining Wi-Fi connectivity is unavailable", localSecurityException);
    }
    return "android_network_type_" + paramTelephonyManager.getNetworkType();
  }
  
  static String getSerialNumberHashOrNull()
  {
    String str = null;
    if (Constants.CURRENT_API_LEVEL >= 9) {
      try
      {
        str = (String)Build.class.getField("SERIAL").get(null);
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    }
    if (localException == null) {
      return null;
    }
    return getSha256_buggy(localException);
  }
  
  static String getSha256_buggy(String paramString)
  {
    try
    {
      paramString = new BigInteger(1, MessageDigest.getInstance("SHA-256").digest(paramString.getBytes("UTF-8"))).toString(16);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  static String getTelephonyDeviceIdOrNull()
  {
    if ((Constants.CURRENT_API_LEVEL >= 7) && (!((Boolean)ReflectionUtils.tryInvokeInstance(Localytics.appContext.getPackageManager(), "hasSystemFeature", STRING_CLASS_ARRAY, HARDWARE_TELEPHONY)).booleanValue()))
    {
      Localytics.Log.i("Device does not have telephony; cannot read telephony id");
      return null;
    }
    if (Localytics.appContext.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", Localytics.appContext.getPackageName()) == 0) {
      return ((TelephonyManager)Localytics.appContext.getSystemService("phone")).getDeviceId();
    }
    Localytics.Log.w("Application does not have permission READ_PHONE_STATE; determining device id is not possible.  Please consider requesting READ_PHONE_STATE in the AndroidManifest");
    return null;
  }
  
  static class AdvertisingInfo
  {
    public String id;
    public boolean limitAdTracking;
    
    public AdvertisingInfo(String paramString, boolean paramBoolean)
    {
      this.id = paramString;
      this.limitAdTracking = paramBoolean;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.DatapointHelper
 * JD-Core Version:    0.7.0.1
 */