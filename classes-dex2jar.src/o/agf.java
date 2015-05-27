package o;

import android.content.res.Resources;
import android.text.TextUtils;
import com.twitter.sdk.android.core.services.StatusesService;

class agf
  implements age
{
  private final mi bCW;
  private final Resources ږ;
  
  public agf(Resources paramResources, mi parammi)
  {
    this.ږ = paramResources;
    this.bCW = parammi;
  }
  
  private String ᐡ(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      paramString1 = this.ږ.getString(2131099902);
    }
    else
    {
      String str = this.ږ.getString(2131099903, new Object[] { paramString1 });
      paramString1 = str;
      if (str.length() > 116)
      {
        paramString1 = this.ږ.getString(2131099774);
        int i = paramString1.length();
        paramString1 = str.substring(0, 116 - i) + paramString1;
      }
    }
    return paramString1 + " " + paramString2;
  }
  
  public void ˊ(String paramString1, String paramString2, lz<om> paramlz)
  {
    this.bCW.aZ().update(ᐡ(paramString1, paramString2), null, null, null, null, null, null, null, paramlz);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agf
 * JD-Core Version:    0.7.0.1
 */