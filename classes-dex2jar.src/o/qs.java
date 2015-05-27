package o;

import android.content.Context;

public class qs
{
  private final px<String> Wo = new qt(this);
  private final pv<String> Wp = new pv();
  
  public String ᵀ(Context paramContext)
  {
    try
    {
      paramContext = (String)this.Wp.ˊ(paramContext, this.Wo);
      boolean bool = "".equals(paramContext);
      if (bool) {
        return null;
      }
      return paramContext;
    }
    catch (Exception paramContext)
    {
      pj.cd().ˏ("Fabric", "Failed to determine installer package name", paramContext);
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qs
 * JD-Core Version:    0.7.0.1
 */