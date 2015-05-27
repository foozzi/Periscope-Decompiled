package o;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.util.TypedValue;
import java.util.Iterator;
import java.util.List;

public final class ძ
{
  public static boolean BL = false;
  public static boolean BM = false;
  private static int BN = -1;
  private static final Object BO = new Object();
  
  public static String ʻ(Context paramContext, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
      if (ˊ(paramContext.getResources())) {
        paramContext = localResources.getString(ห.if.common_google_play_services_install_text_tablet);
      } else {
        paramContext = localResources.getString(ห.if.common_google_play_services_install_text_phone);
      }
      return paramContext;
    case 3: 
      return localResources.getString(ห.if.common_google_play_services_enable_text);
    case 2: 
      return localResources.getString(ห.if.common_google_play_services_update_text);
    case 42: 
      return localResources.getString(ห.if.common_android_wear_update_text);
    case 9: 
      return localResources.getString(ห.if.common_google_play_services_unsupported_text);
    case 7: 
      return localResources.getString(ห.if.common_google_play_services_network_error_text);
    case 5: 
      return localResources.getString(ห.if.common_google_play_services_invalid_account_text);
    case 16: 
      return localResources.getString(ห.if.commono_google_play_services_api_unavailable_text);
    case 17: 
      return localResources.getString(ห.if.common_google_play_services_sign_in_failed_text);
    }
    return localResources.getString(ห.if.common_google_play_services_unknown_issue);
  }
  
  public static String ʼ(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
      return paramContext.getString(ห.if.common_google_play_services_install_button);
    case 3: 
      return paramContext.getString(ห.if.common_google_play_services_enable_button);
    case 2: 
    case 42: 
      return paramContext.getString(ห.if.common_google_play_services_update_button);
    }
    return paramContext.getString(17039370);
  }
  
  public static boolean ʽ(Context paramContext, int paramInt)
  {
    if (paramInt == 1) {
      return ˏ(paramContext, "com.google.android.gms");
    }
    return false;
  }
  
  public static Dialog ˊ(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return ˊ(paramInt1, paramActivity, paramInt2, null);
  }
  
  public static Dialog ˊ(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return ˊ(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  private static Dialog ˊ(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    int i = paramInt1;
    if (e.ⁱ(paramActivity))
    {
      i = paramInt1;
      if (paramInt1 == 2) {
        i = 42;
      }
    }
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (f.ﻌ())
    {
      TypedValue localTypedValue = new TypedValue();
      paramActivity.getTheme().resolveAttribute(16843529, localTypedValue, true);
      localObject1 = localObject2;
      if ("Theme.Dialog.Alert".equals(paramActivity.getResources().getResourceEntryName(localTypedValue.resourceId))) {
        localObject1 = new AlertDialog.Builder(paramActivity, 5);
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = new AlertDialog.Builder(paramActivity);
    }
    ((AlertDialog.Builder)localObject2).setMessage(ʻ(paramActivity, i));
    if (paramOnCancelListener != null) {
      ((AlertDialog.Builder)localObject2).setOnCancelListener(paramOnCancelListener);
    }
    paramOnCancelListener = г(i);
    if (paramFragment == null) {
      paramFragment = new ァ(paramActivity, paramOnCancelListener, paramInt2);
    } else {
      paramFragment = new ァ(paramFragment, paramOnCancelListener, paramInt2);
    }
    paramActivity = ʼ(paramActivity, i);
    if (paramActivity != null) {
      ((AlertDialog.Builder)localObject2).setPositiveButton(paramActivity, paramFragment);
    }
    switch (i)
    {
    default: 
      break;
    case 0: 
      return null;
    case 4: 
    case 6: 
      return ((AlertDialog.Builder)localObject2).create();
    case 1: 
      return ((AlertDialog.Builder)localObject2).setTitle(ห.if.common_google_play_services_install_title).create();
    case 3: 
      return ((AlertDialog.Builder)localObject2).setTitle(ห.if.common_google_play_services_enable_title).create();
    case 2: 
      return ((AlertDialog.Builder)localObject2).setTitle(ห.if.common_google_play_services_update_title).create();
    case 42: 
      return ((AlertDialog.Builder)localObject2).setTitle(ห.if.common_android_wear_update_title).create();
    case 9: 
      Log.e("GooglePlayServicesUtil", "Google Play services is invalid. Cannot recover.");
      return ((AlertDialog.Builder)localObject2).setTitle(ห.if.common_google_play_services_unsupported_title).create();
    case 7: 
      Log.e("GooglePlayServicesUtil", "Network error occurred. Please retry request later.");
      return ((AlertDialog.Builder)localObject2).setTitle(ห.if.common_google_play_services_network_error_title).create();
    case 8: 
      Log.e("GooglePlayServicesUtil", "Internal error occurred. Please see logs for detailed information");
      return ((AlertDialog.Builder)localObject2).create();
    case 10: 
      Log.e("GooglePlayServicesUtil", "Developer error occurred. Please see logs for detailed information");
      return ((AlertDialog.Builder)localObject2).create();
    case 5: 
      Log.e("GooglePlayServicesUtil", "An invalid account was specified when connecting. Please provide a valid account.");
      return ((AlertDialog.Builder)localObject2).setTitle(ห.if.common_google_play_services_invalid_account_title).create();
    case 11: 
      Log.e("GooglePlayServicesUtil", "The application is not licensed to the user.");
      return ((AlertDialog.Builder)localObject2).create();
    case 16: 
      Log.e("GooglePlayServicesUtil", "One of the API components you attempted to connect to is not available.");
      return ((AlertDialog.Builder)localObject2).create();
    case 17: 
      Log.e("GooglePlayServicesUtil", "The specified account could not be signed in.");
      return ((AlertDialog.Builder)localObject2).setTitle(ห.if.common_google_play_services_sign_in_failed_title).create();
    }
    Log.e("GooglePlayServicesUtil", "Unexpected error code " + i);
    return ((AlertDialog.Builder)localObject2).create();
  }
  
  public static boolean ˊ(Context paramContext, int paramInt, String paramString)
  {
    if (f.ﻢ())
    {
      paramContext = (AppOpsManager)paramContext.getSystemService("appops");
      try
      {
        paramContext.checkPackage(paramInt, paramString);
        return true;
      }
      catch (SecurityException paramContext)
      {
        return false;
      }
    }
    paramContext = paramContext.getPackageManager().getPackagesForUid(paramInt);
    if ((paramString != null) && (paramContext != null))
    {
      paramInt = 0;
      while (paramInt < paramContext.length)
      {
        if (paramString.equals(paramContext[paramInt])) {
          return true;
        }
        paramInt += 1;
      }
    }
    return false;
  }
  
  public static boolean ˊ(PackageManager paramPackageManager)
  {
    synchronized (BO)
    {
      int i = BN;
      if (i == -1) {
        try
        {
          paramPackageManager = paramPackageManager.getPackageInfo("com.google.android.gms", 64);
          if (ףּ.ぃ().ˊ(paramPackageManager, new ﻌ.if[] { ﻌ.EQ[1] }) != null) {
            BN = 1;
          } else {
            BN = 0;
          }
        }
        catch (PackageManager.NameNotFoundException paramPackageManager)
        {
          BN = 0;
        }
      }
    }
    return BN != 0;
  }
  
  @Deprecated
  public static boolean ˊ(PackageManager paramPackageManager, String paramString)
  {
    return ףּ.ぃ().ˊ(paramPackageManager, paramString);
  }
  
  public static boolean ˊ(Resources paramResources)
  {
    if (paramResources == null) {
      return false;
    }
    int i;
    if ((paramResources.getConfiguration().screenLayout & 0xF) > 3) {
      i = 1;
    } else {
      i = 0;
    }
    return ((f.ﺧ()) && (i != 0)) || (ˋ(paramResources));
  }
  
  public static boolean ˋ(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramFragment = ˊ(paramInt1, paramActivity, paramFragment, paramInt2, paramOnCancelListener);
    if (paramFragment == null) {
      return false;
    }
    if ((paramActivity instanceof ι))
    {
      paramActivity = ((ι)paramActivity).getSupportFragmentManager();
      ᐵ.ˋ(paramFragment, paramOnCancelListener).show(paramActivity, "GooglePlayServicesErrorDialog");
    }
    else if (f.ﺧ())
    {
      paramActivity = paramActivity.getFragmentManager();
      ไ.ˊ(paramFragment, paramOnCancelListener).show(paramActivity, "GooglePlayServicesErrorDialog");
    }
    else
    {
      throw new RuntimeException("This Activity does not support Fragments.");
    }
    return true;
  }
  
  public static boolean ˋ(PackageManager paramPackageManager)
  {
    return (ˊ(paramPackageManager)) || (!ף());
  }
  
  private static boolean ˋ(Resources paramResources)
  {
    paramResources = paramResources.getConfiguration();
    if (f.ﻋ()) {
      return ((paramResources.screenLayout & 0xF) <= 3) && (paramResources.smallestScreenWidthDp >= 600);
    }
    return false;
  }
  
  private static boolean ˏ(Context paramContext, String paramString)
  {
    if (f.Ｆ())
    {
      paramContext = paramContext.getPackageManager().getPackageInstaller().getAllSessions().iterator();
      while (paramContext.hasNext()) {
        if (paramString.equals(((PackageInstaller.SessionInfo)paramContext.next()).getAppPackageName())) {
          return true;
        }
      }
    }
    else
    {
      paramContext = paramContext.getPackageManager();
      try
      {
        boolean bool = paramContext.getApplicationInfo(paramString, 8192).enabled;
        if (bool) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return false;
  }
  
  public static String Ї(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      return "SUCCESS";
    case 1: 
      return "SERVICE_MISSING";
    case 2: 
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3: 
      return "SERVICE_DISABLED";
    case 4: 
      return "SIGN_IN_REQUIRED";
    case 5: 
      return "INVALID_ACCOUNT";
    case 6: 
      return "RESOLUTION_REQUIRED";
    case 7: 
      return "NETWORK_ERROR";
    case 8: 
      return "INTERNAL_ERROR";
    case 9: 
      return "SERVICE_INVALID";
    case 10: 
      return "DEVELOPER_ERROR";
    case 11: 
      return "LICENSE_CHECK_FAILED";
    case 16: 
      return "API_UNAVAILABLE";
    }
    return "UNKNOWN_ERROR_CODE";
  }
  
  public static Intent г(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
    case 2: 
      return צּ.ᐟ("com.google.android.gms");
    case 42: 
      return צּ.Ἷ();
    case 3: 
      return צּ.יִ("com.google.android.gms");
    }
    return null;
  }
  
  public static boolean ף()
  {
    if (BL) {
      return BM;
    }
    return "user".equals(Build.TYPE);
  }
  
  public static boolean ذ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
    case 2: 
    case 3: 
    case 9: 
      return true;
    }
    return false;
  }
  
  public static int ٴ(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (!々.DL) {
      try
      {
        paramContext.getResources().getString(ห.if.common_google_play_services_unknown_issue);
      }
      catch (Throwable localThrowable)
      {
        Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
      }
    }
    if (!々.DL) {
      ᴵ(paramContext);
    }
    PackageInfo localPackageInfo;
    try
    {
      localPackageInfo = localPackageManager.getPackageInfo("com.google.android.gms", 64);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
      return 1;
    }
    ףּ localףּ = ףּ.ぃ();
    if ((e.Ị(localPackageInfo.versionCode)) || (e.ⁱ(paramContext)))
    {
      if (localףּ.ˊ(localPackageInfo, ﻌ.ˌ.EU) == null)
      {
        Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
        return 9;
      }
    }
    else
    {
      try
      {
        paramContext = localPackageManager.getPackageInfo("com.android.vending", 64);
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
        return 9;
      }
      paramContext = localףּ.ˊ(paramContext, ﻌ.ˌ.EU);
      if (paramContext == null)
      {
        Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
        return 9;
      }
      if (localףּ.ˊ(localPackageInfo, new ﻌ.if[] { paramContext }) == null)
      {
        Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
        return 9;
      }
    }
    int i = e.ᵪ(7095000);
    if (e.ᵪ(localPackageInfo.versionCode) < i)
    {
      Log.w("GooglePlayServicesUtil", "Google Play services out of date.  Requires 7095000 but found " + localPackageInfo.versionCode);
      return 2;
    }
    try
    {
      paramContext = localPackageManager.getApplicationInfo("com.google.android.gms", 0);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.");
      paramContext.printStackTrace();
      return 1;
    }
    if (!paramContext.enabled) {
      return 3;
    }
    return 0;
  }
  
  public static boolean ᐝ(Context paramContext, int paramInt)
  {
    return (ˊ(paramContext, paramInt, "com.google.android.gms")) && (ˊ(paramContext.getPackageManager(), "com.google.android.gms"));
  }
  
  private static void ᴵ(Context paramContext)
  {
    Object localObject = null;
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.wtf("GooglePlayServicesUtil", "This should never happen.", paramContext);
      paramContext = localObject;
    }
    paramContext = paramContext.metaData;
    if (paramContext != null)
    {
      int i = paramContext.getInt("com.google.android.gms.version");
      if (i == 7095000) {
        return;
      }
      throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 7095000 but found " + i + ".  You must have the" + " following declaration within the <application> element: " + "    <meta-data android:name=\"" + "com.google.android.gms.version" + "\" android:value=\"@integer/google_play_services_version\" />");
    }
    throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
  }
  
  public static void ᵎ(Context paramContext)
  {
    try
    {
      ((NotificationManager)paramContext.getSystemService("notification")).cancel(10436);
      return;
    }
    catch (SecurityException paramContext) {}
  }
  
  public static Context ᵔ(Context paramContext)
  {
    try
    {
      paramContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á«
 * JD-Core Version:    0.7.0.1
 */