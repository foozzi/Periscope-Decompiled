package o;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;

public class qf
{
  protected String cs()
  {
    return "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>";
  }
  
  public String ᐠ(Context paramContext)
  {
    String str2 = ᐣ(paramContext);
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = ᐩ(paramContext);
    }
    if (TextUtils.isEmpty(str1)) {
      ᑊ(paramContext);
    }
    return str1;
  }
  
  protected String ᐣ(Context paramContext)
  {
    String str2 = null;
    Object localObject1 = null;
    String str1 = str2;
    try
    {
      Object localObject2 = paramContext.getPackageName();
      str1 = str2;
      localObject2 = paramContext.getPackageManager().getApplicationInfo((String)localObject2, 128).metaData;
      paramContext = localObject1;
      if (localObject2 != null)
      {
        str1 = str2;
        str2 = ((Bundle)localObject2).getString("io.fabric.ApiKey");
        paramContext = str2;
        if (str2 == null)
        {
          str1 = str2;
          pj.cd().ˑ("Fabric", "Falling back to Crashlytics key lookup from Manifest");
          str1 = str2;
          paramContext = ((Bundle)localObject2).getString("com.crashlytics.ApiKey");
        }
      }
      return paramContext;
    }
    catch (Exception paramContext)
    {
      pj.cd().ˑ("Fabric", "Caught non-fatal exception while retrieving apiKey: " + paramContext);
    }
    return str1;
  }
  
  protected String ᐩ(Context paramContext)
  {
    String str = null;
    int j = qh.ˊ(paramContext, "io.fabric.ApiKey", "string");
    int i = j;
    if (j == 0)
    {
      pj.cd().ˑ("Fabric", "Falling back to Crashlytics key lookup from Strings");
      i = qh.ˊ(paramContext, "com.crashlytics.ApiKey", "string");
    }
    if (i != 0) {
      str = paramContext.getResources().getString(i);
    }
    return str;
  }
  
  protected void ᑊ(Context paramContext)
  {
    if ((pj.ce()) || (qh.ᒽ(paramContext))) {
      throw new IllegalArgumentException(cs());
    }
    pj.cd().ᐨ("Fabric", cs());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qf
 * JD-Core Version:    0.7.0.1
 */