package o;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;

public class to
{
  public final int YV;
  public final String Yz;
  public final int height;
  public final int width;
  
  public to(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    this.Yz = paramString;
    this.YV = paramInt1;
    this.width = paramInt2;
    this.height = paramInt3;
  }
  
  public static to ʽ(Context paramContext, String paramString)
  {
    if (paramString != null) {
      try
      {
        int i = qh.ᗮ(paramContext);
        pj.cd().ˑ("Fabric", "App icon resource ID is " + i);
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(paramContext.getResources(), i, localOptions);
        paramContext = new to(paramString, i, localOptions.outWidth, localOptions.outHeight);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        pj.cd().ˏ("Fabric", "Failed to load icon", paramContext);
      }
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.to
 * JD-Core Version:    0.7.0.1
 */