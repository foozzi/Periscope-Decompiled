package o;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.Collection;

class pt
  extends pq<Boolean>
{
  private final sq Vh;
  private PackageManager Vi;
  private PackageInfo Vj;
  private String Vk;
  private String Vl;
  private String installerPackageName;
  private String nG;
  private final Collection<pq> nz;
  private String packageName;
  private String versionName;
  
  public pt(Collection<pq> paramCollection)
  {
    this.nz = paramCollection;
    this.Vh = new sl();
  }
  
  private te ˊ(to paramto, Collection<pq> paramCollection)
  {
    Object localObject = getContext();
    String str = new qf().ᐠ((Context)localObject);
    localObject = qh.ˏ(new String[] { qh.ᴶ((Context)localObject) });
    int i = ql.ї(this.installerPackageName).getId();
    return new te(str, cg().cB(), this.versionName, this.nG, (String)localObject, this.Vk, i, this.Vl, "0", paramto, paramCollection);
  }
  
  private boolean ˊ(String paramString, tf paramtf, Collection<pq> paramCollection)
  {
    if ("new".equals(paramtf.YH))
    {
      if (ˋ(paramString, paramtf, paramCollection)) {
        return tr.dN().dQ();
      }
      pj.cd().ˏ("Fabric", "Failed to create app with Crashlytics service.", null);
      return false;
    }
    if ("configured".equals(paramtf.YH)) {
      return tr.dN().dQ();
    }
    if (paramtf.YJ)
    {
      pj.cd().ˑ("Fabric", "Server says an update is required - forcing a full App update.");
      ˎ(paramString, paramtf, paramCollection);
    }
    return true;
  }
  
  private boolean ˊ(tf paramtf, to paramto, Collection<pq> paramCollection)
  {
    paramto = ˊ(paramto, paramCollection);
    return new tz(this, Ĩ(), paramtf.url, this.Vh).ˊ(paramto);
  }
  
  private boolean ˋ(String paramString, tf paramtf, Collection<pq> paramCollection)
  {
    paramString = ˊ(to.ʽ(getContext(), paramString), paramCollection);
    return new ti(this, Ĩ(), paramtf.url, this.Vh).ˊ(paramString);
  }
  
  private boolean ˎ(String paramString, tf paramtf, Collection<pq> paramCollection)
  {
    return ˊ(paramtf, to.ʽ(getContext(), paramString), paramCollection);
  }
  
  public String getVersion()
  {
    return "1.3.0.41";
  }
  
  String Ĩ()
  {
    return qh.ʻ(getContext(), "com.crashlytics.ApiEndpoint");
  }
  
  protected Boolean ᴣ()
  {
    String str = qh.ᔈ(getContext());
    boolean bool2 = false;
    Object localObject = null;
    try
    {
      tr.dN().ˊ(this, this.ok, this.Vh, this.nG, this.versionName, Ĩ()).dP();
      tu localtu = tr.dN().dO();
      localObject = localtu;
    }
    catch (Exception localException2)
    {
      pj.cd().ˏ("Fabric", "Error dealing with settings", localException2);
    }
    boolean bool1 = bool2;
    if (localObject != null) {
      try
      {
        bool1 = ˊ(str, localObject.Zq, this.nz);
      }
      catch (Exception localException1)
      {
        pj.cd().ˏ("Fabric", "Error performing auto configuration.", localException1);
        bool1 = bool2;
      }
    }
    return Boolean.valueOf(bool1);
  }
  
  protected boolean ﺰ()
  {
    try
    {
      this.installerPackageName = cg().getInstallerPackageName();
      this.Vi = getContext().getPackageManager();
      this.packageName = getContext().getPackageName();
      this.Vj = this.Vi.getPackageInfo(this.packageName, 0);
      this.nG = Integer.toString(this.Vj.versionCode);
      String str;
      if (this.Vj.versionName == null) {
        str = "0.0";
      } else {
        str = this.Vj.versionName;
      }
      this.versionName = str;
      this.Vk = this.Vi.getApplicationLabel(getContext().getApplicationInfo()).toString();
      this.Vl = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      pj.cd().ˏ("Fabric", "Failed init", localNameNotFoundException);
    }
    return false;
  }
  
  public String ｯ()
  {
    return "io.fabric.sdk.android:fabric";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pt
 * JD-Core Version:    0.7.0.1
 */