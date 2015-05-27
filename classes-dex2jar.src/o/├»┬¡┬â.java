package o;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import java.util.Set;

public class ףּ
{
  private static final ףּ EY = new ףּ();
  
  private boolean ˊ(PackageInfo paramPackageInfo, boolean paramBoolean)
  {
    if (paramPackageInfo.signatures.length != 1)
    {
      Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
      return false;
    }
    ﻌ.י localי = new ﻌ.י(paramPackageInfo.signatures[0].toByteArray());
    if (paramBoolean) {
      paramPackageInfo = ﻌ.Ⅱ();
    } else {
      paramPackageInfo = ﻌ.ⅱ();
    }
    if (paramPackageInfo.contains(localי)) {
      return true;
    }
    if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
      Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(localי.getBytes(), 0));
    }
    return false;
  }
  
  public static ףּ ぃ()
  {
    return EY;
  }
  
  ﻌ.if ˊ(PackageInfo paramPackageInfo, ﻌ.if... paramVarArgs)
  {
    if (paramPackageInfo.signatures.length != 1)
    {
      Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
      return null;
    }
    paramPackageInfo = new ﻌ.י(paramPackageInfo.signatures[0].toByteArray());
    int i = 0;
    while (i < paramVarArgs.length)
    {
      if (paramVarArgs[i].equals(paramPackageInfo)) {
        return paramVarArgs[i];
      }
      i += 1;
    }
    if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
      Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(paramPackageInfo.getBytes(), 0));
    }
    return null;
  }
  
  public boolean ˊ(PackageManager paramPackageManager, PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo == null) {
      return false;
    }
    if (ძ.ˋ(paramPackageManager)) {
      return ˊ(paramPackageInfo, true);
    }
    boolean bool = ˊ(paramPackageInfo, false);
    if ((!bool) && (ˊ(paramPackageInfo, true))) {
      Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
    }
    return bool;
  }
  
  public boolean ˊ(PackageManager paramPackageManager, String paramString)
  {
    PackageInfo localPackageInfo;
    try
    {
      localPackageInfo = paramPackageManager.getPackageInfo(paramString, 64);
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      if (Log.isLoggable("GoogleSignatureVerifier", 3)) {
        Log.d("GoogleSignatureVerifier", "Package manager can't find package " + paramString + ", defaulting to false");
      }
      return false;
    }
    return ˊ(paramPackageManager, localPackageInfo);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­
 * JD-Core Version:    0.7.0.1
 */