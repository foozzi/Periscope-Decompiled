package o;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import com.twitter.sdk.android.core.TwitterAuthConfig;

class nb
  extends ms
{
  static final ComponentName QK = new ComponentName("com.twitter.android", "com.twitter.android.SingleSignOnActivity");
  
  public nb(TwitterAuthConfig paramTwitterAuthConfig, lz<mr> paramlz, int paramInt)
  {
    super(paramTwitterAuthConfig, paramlz, paramInt);
  }
  
  public static boolean ˆ(Context paramContext)
  {
    return ˎ(paramContext.getPackageManager());
  }
  
  private static boolean ˎ(PackageManager paramPackageManager)
  {
    try
    {
      paramPackageManager = paramPackageManager.getPackageInfo("com.twitter.android", 64);
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      return false;
    }
    paramPackageManager = paramPackageManager.signatures;
    int j = paramPackageManager.length;
    int i = 0;
    while (i < j)
    {
      if ("3082025d308201c6a00302010202044bd76cce300d06092a864886f70d01010505003073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e6420526563686973301e170d3130303432373233303133345a170d3438303832353233303133345a3073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e642052656368697330819f300d06092a864886f70d010101050003818d003081890281810086233c2e51c62232d49cc932e470713d63a6a1106b38f9e442e01bc79ca4f95c72b2cb3f1369ef7dea6036bff7c4b2828cb3787e7657ad83986751ced5b131fcc6f413efb7334e32ed9787f9e9a249ae108fa66009ac7a7932c25d37e1e07d4f9f66aa494c270dbac87d261c9668d321c2fba4ef2800e46671a597ff2eac5d7f0203010001300d06092a864886f70d0101050500038181003e1f01cb6ea8be8d2cecef5cd2a64c97ba8728aa5f08f8275d00508d64d139b6a72c5716b40a040df0eeeda04de9361107e123ee8d3dc05e70c8a355f46dbadf1235443b0b214c57211afd4edd147451c443d49498d2a7ff27e45a99c39b9e47429a1dae843ba233bf8ca81296dbe1dc5c5434514d995b0279246809392a219b".equals(paramPackageManager[i].toCharsString())) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private boolean ˑ(Activity paramActivity)
  {
    Object localObject = paramActivity.getPackageManager();
    if (!ˎ((PackageManager)localObject))
    {
      pj.cd().ˏ("Twitter", "SSO app signature check failed", null);
      return false;
    }
    try
    {
      ((PackageManager)localObject).getActivityInfo(QK, 0);
    }
    catch (PackageManager.NameNotFoundException paramActivity)
    {
      pj.cd().ˏ("Twitter", "SSO auth activity not found", null);
      return false;
    }
    localObject = be();
    Intent localIntent = new Intent().setComponent(QK);
    localIntent.putExtra("ck", ((TwitterAuthConfig)localObject).ba()).putExtra("cs", ((TwitterAuthConfig)localObject).bb());
    try
    {
      paramActivity.startActivityForResult(localIntent, this.Qx);
      return true;
    }
    catch (Exception paramActivity)
    {
      pj.cd().ˏ("Twitter", "SSO exception occurred", paramActivity);
    }
    return false;
  }
  
  public boolean ˌ(Activity paramActivity)
  {
    return ˑ(paramActivity);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nb
 * JD-Core Version:    0.7.0.1
 */