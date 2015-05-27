package o;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;

public class amm
{
  private static final HashMap<String, Typeface> bNh = new HashMap();
  
  public static Typeface ͺ(Context paramContext, String paramString)
  {
    synchronized (bNh)
    {
      boolean bool = bNh.containsKey(paramString);
      if (!bool) {
        try
        {
          paramContext = Typeface.createFromAsset(paramContext.getAssets(), paramString);
          bNh.put(paramString, paramContext);
        }
        catch (Exception paramContext)
        {
          akk.ˏ("PsTypefaces", "Could not get cached typeface " + paramString, paramContext);
          return null;
        }
      }
      paramContext = (Typeface)bNh.get(paramString);
      return paramContext;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amm
 * JD-Core Version:    0.7.0.1
 */