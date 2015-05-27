package o;

import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class lx
  implements ge<lw>, fv<lw>
{
  static final Map<String, Class<? extends lw>> PS = new HashMap();
  private final fl gson = new fl();
  
  static
  {
    PS.put("oauth1a", TwitterAuthToken.class);
    PS.put("oauth2", OAuth2Token.class);
    PS.put("guest", GuestAuthToken.class);
  }
  
  static String ˉ(Class<? extends lw> paramClass)
  {
    Iterator localIterator = PS.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((Class)localEntry.getValue()).equals(paramClass)) {
        return (String)localEntry.getKey();
      }
    }
    return "";
  }
  
  public fw ˊ(lw paramlw, Type paramType, gd paramgd)
  {
    paramType = new fz();
    paramType.ʿ("auth_type", ˉ(paramlw.getClass()));
    paramType.ˊ("auth_token", this.gson.ᴶ(paramlw));
    return paramType;
  }
  
  public lw ˎ(fw paramfw, Type paramType, fu paramfu)
  {
    paramType = paramfw.r();
    paramfw = paramType.Ꭵ("auth_type").h();
    paramType = paramType.เ("auth_token");
    return (lw)this.gson.ˊ(paramType, (Class)PS.get(paramfw));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lx
 * JD-Core Version:    0.7.0.1
 */