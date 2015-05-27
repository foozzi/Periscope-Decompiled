package o;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class ｆ
  extends pq<Boolean>
  implements qm
{
  private final pv<String> qg = new pv();
  private final ｺ qh = new ｺ();
  
  private void ˊ(Context paramContext, qr paramqr, tg paramtg, ｉ paramｉ)
  {
    new ｔ(paramContext, this, paramqr, paramtg, paramｉ, new sy(pj.ـ(ｆ.class)), new qx(), new sl(pj.cd())).Ἴ();
  }
  
  private String ˎ(Context paramContext, String paramString)
  {
    if (ˋ(paramString, Build.VERSION.SDK_INT))
    {
      pj.cd().ˑ("Beta", "App was installed by Beta. Getting device token");
      try
      {
        paramContext = (String)this.qg.ˊ(paramContext, this.qh);
        boolean bool = "".equals(paramContext);
        if (bool) {
          paramContext = null;
        }
        return paramContext;
      }
      catch (Exception paramContext)
      {
        pj.cd().ˏ("Beta", "Failed to load the Beta device token", paramContext);
        return null;
      }
    }
    pj.cd().ˑ("Beta", "App was not installed by Beta. Skipping device token");
    return null;
  }
  
  private tg Ἳ()
  {
    tu localtu = tr.dN().dO();
    if (localtu != null) {
      return localtu.Zt;
    }
    return null;
  }
  
  private ｉ ﾞ(Context paramContext)
  {
    localObject3 = null;
    Object localObject2 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject1 = localObject4;
    try
    {
      InputStream localInputStream = paramContext.getAssets().open("crashlytics-build.properties");
      paramContext = localObject5;
      if (localInputStream != null)
      {
        localObject2 = localInputStream;
        localObject1 = localObject4;
        localObject3 = localInputStream;
        paramContext = ｉ.ʻ(localInputStream);
        localObject2 = localInputStream;
        localObject1 = paramContext;
        localObject3 = localInputStream;
        pj.cd().ˑ("Beta", paramContext.packageName + " build properties: " + paramContext.versionName + " (" + paramContext.nG + ")" + " - " + paramContext.nn);
      }
      localObject3 = paramContext;
      if (localInputStream != null) {
        try
        {
          localInputStream.close();
          return paramContext;
        }
        catch (IOException localIOException1)
        {
          pj.cd().ˏ("Beta", "Error closing Beta build properties asset", localIOException1);
          return paramContext;
        }
      }
      return localObject3;
    }
    catch (Exception paramContext)
    {
      localObject3 = localObject2;
      pj.cd().ˏ("Beta", "Error reading Beta build properties", paramContext);
      localObject3 = localIOException1;
      if (localObject2 != null) {
        try
        {
          localObject2.close();
          return localIOException1;
        }
        catch (IOException paramContext)
        {
          pj.cd().ˏ("Beta", "Error closing Beta build properties asset", paramContext);
          return localIOException1;
        }
      }
    }
    finally
    {
      if (localObject3 != null) {
        try
        {
          ((InputStream)localObject3).close();
        }
        catch (IOException localIOException2)
        {
          pj.cd().ˏ("Beta", "Error closing Beta build properties asset", localIOException2);
        }
      }
    }
  }
  
  public String getVersion()
  {
    return "1.1.2.37";
  }
  
  String Ĩ()
  {
    return qh.ʻ(getContext(), "com.crashlytics.ApiEndpoint");
  }
  
  boolean ˊ(tg paramtg, ｉ paramｉ)
  {
    return (paramtg != null) && (!TextUtils.isEmpty(paramtg.YL)) && (paramｉ != null);
  }
  
  @TargetApi(11)
  boolean ˋ(String paramString, int paramInt)
  {
    if (paramInt < 11) {
      return paramString == null;
    }
    return "io.crash.air".equals(paramString);
  }
  
  protected Boolean ᴣ()
  {
    pj.cd().ˑ("Beta", "Beta kit initializing...");
    Context localContext = getContext();
    qr localqr = cg();
    if (TextUtils.isEmpty(ˎ(localContext, localqr.getInstallerPackageName())))
    {
      pj.cd().ˑ("Beta", "A Beta device token was not found for this app");
      return Boolean.valueOf(false);
    }
    pj.cd().ˑ("Beta", "Beta device token is present, checking for app updates.");
    tg localtg = Ἳ();
    ｉ localｉ = ﾞ(localContext);
    if (ˊ(localtg, localｉ)) {
      ˊ(localContext, localqr, localtg, localｉ);
    }
    return Boolean.valueOf(true);
  }
  
  public Map<qr.if, String> Ἲ()
  {
    String str = cg().getInstallerPackageName();
    str = ˎ(getContext(), str);
    HashMap localHashMap = new HashMap();
    if (!TextUtils.isEmpty(str)) {
      localHashMap.put(qr.if.Wh, str);
    }
    return localHashMap;
  }
  
  public String ｯ()
  {
    return "com.crashlytics.sdk.android:beta";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½
 * JD-Core Version:    0.7.0.1
 */