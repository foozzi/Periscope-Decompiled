package o;

import android.text.TextUtils;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;

public class lv
  extends mg<OAuth2Token>
{
  static class if
    implements ta<lv>
  {
    private final fl gson = new fr().ˊ(OAuth2Token.class, new lx()).f();
    
    public String ˊ(lv paramlv)
    {
      if ((paramlv != null) && (paramlv.aX() != null)) {
        try
        {
          paramlv = this.gson.ᴸ(paramlv);
          return paramlv;
        }
        catch (Exception paramlv)
        {
          pj.cd().ˑ("Twitter", "Failed to serialize session " + paramlv.getMessage());
        }
      }
      return "";
    }
    
    public lv ᔋ(String paramString)
    {
      if (!TextUtils.isEmpty(paramString)) {
        try
        {
          paramString = (lv)this.gson.ˊ(paramString, lv.class);
          return paramString;
        }
        catch (Exception paramString)
        {
          pj.cd().ˑ("Twitter", "Failed to deserialize session " + paramString.getMessage());
        }
      }
      return null;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lv
 * JD-Core Version:    0.7.0.1
 */