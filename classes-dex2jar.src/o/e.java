package o;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.regex.Pattern;

public final class e
{
  private static Pattern FT = null;
  
  public static int ᵪ(int paramInt)
  {
    return paramInt / 1000;
  }
  
  public static int ḯ(int paramInt)
  {
    return paramInt % 1000 / 100;
  }
  
  public static boolean Ị(int paramInt)
  {
    return ḯ(paramInt) == 3;
  }
  
  public static boolean ⁱ(Context paramContext)
  {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.e
 * JD-Core Version:    0.7.0.1
 */