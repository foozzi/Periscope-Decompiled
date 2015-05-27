package o;

import android.content.Context;
import android.content.pm.PackageManager;

class qt
  implements px<String>
{
  qt(qs paramqs) {}
  
  public String ʹ(Context paramContext)
  {
    paramContext = paramContext.getPackageManager().getInstallerPackageName(paramContext.getPackageName());
    if (paramContext == null) {
      return "";
    }
    return paramContext;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qt
 * JD-Core Version:    0.7.0.1
 */