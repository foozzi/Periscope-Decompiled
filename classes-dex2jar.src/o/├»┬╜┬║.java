package o;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class ｺ
  implements px<String>
{
  public String ʹ(Context paramContext)
  {
    long l = System.nanoTime();
    String str1 = "";
    Context localContext1 = null;
    Context localContext2 = null;
    Object localObject1 = null;
    Object localObject2 = null;
    try
    {
      paramContext = ՙ(paramContext);
      localObject2 = paramContext;
      localContext1 = paramContext;
      localContext2 = paramContext;
      localObject1 = paramContext;
      String str2 = ˊ(paramContext);
      localObject2 = str2;
      localObject1 = localObject2;
      if (paramContext != null) {
        try
        {
          paramContext.close();
          localObject1 = localObject2;
        }
        catch (IOException paramContext)
        {
          pj.cd().ˏ("Beta", "Failed to close the APK file", paramContext);
          localObject1 = localObject2;
        }
      }
      d = (System.nanoTime() - l) / 1000000.0D;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      localObject1 = localObject2;
      pj.cd().ˏ("Beta", "Failed to find this app in the PackageManager", paramContext);
      localObject1 = str1;
      if (localObject2 != null) {
        try
        {
          ((ZipInputStream)localObject2).close();
          localObject1 = str1;
        }
        catch (IOException paramContext)
        {
          pj.cd().ˏ("Beta", "Failed to close the APK file", paramContext);
          localObject1 = str1;
        }
      }
    }
    catch (FileNotFoundException paramContext)
    {
      localObject1 = localContext1;
      pj.cd().ˏ("Beta", "Failed to find the APK file", paramContext);
      localObject1 = str1;
      if (localContext1 != null) {
        try
        {
          localContext1.close();
          localObject1 = str1;
        }
        catch (IOException paramContext)
        {
          pj.cd().ˏ("Beta", "Failed to close the APK file", paramContext);
          localObject1 = str1;
        }
      }
    }
    catch (IOException paramContext)
    {
      localObject1 = localContext2;
      pj.cd().ˏ("Beta", "Failed to read the APK file", paramContext);
      localObject1 = str1;
      if (localContext2 != null) {
        try
        {
          localContext2.close();
          localObject1 = str1;
        }
        catch (IOException paramContext)
        {
          pj.cd().ˏ("Beta", "Failed to close the APK file", paramContext);
          localObject1 = str1;
        }
      }
    }
    finally
    {
      if (localObject1 != null) {
        try
        {
          ((ZipInputStream)localObject1).close();
        }
        catch (IOException localIOException)
        {
          pj.cd().ˏ("Beta", "Failed to close the APK file", localIOException);
        }
      }
    }
    double d;
    pj.cd().ˑ("Beta", "Beta device token load took " + d + "ms");
    return localIOException;
  }
  
  String ˊ(ZipInputStream paramZipInputStream)
  {
    for (;;)
    {
      Object localObject = paramZipInputStream.getNextEntry();
      if (localObject == null) {
        break;
      }
      localObject = ((ZipEntry)localObject).getName();
      if (((String)localObject).startsWith("assets/com.crashlytics.android.beta/dirfactor-device-token=")) {
        return ((String)localObject).substring("assets/com.crashlytics.android.beta/dirfactor-device-token=".length(), ((String)localObject).length() - 1);
      }
    }
    return "";
  }
  
  ZipInputStream ՙ(Context paramContext)
  {
    return new ZipInputStream(new FileInputStream(paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 0).sourceDir));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½º
 * JD-Core Version:    0.7.0.1
 */