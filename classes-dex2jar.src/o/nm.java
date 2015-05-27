package o;

import android.text.TextUtils;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class nm
{
  private final String As;
  private final mg PT;
  private final TwitterAuthConfig PU;
  private final Map<String, String> Rg;
  private final String method;
  private final String url;
  
  public nm(String paramString1, String paramString2, TwitterAuthConfig paramTwitterAuthConfig, mg parammg, String paramString3, Map<String, String> paramMap)
  {
    this.method = paramString1;
    this.url = paramString2;
    this.PU = paramTwitterAuthConfig;
    this.PT = parammg;
    this.As = paramString3;
    this.Rg = paramMap;
  }
  
  protected Map<String, String> bF()
  {
    return Collections.emptyMap();
  }
  
  public Map<String, String> bG()
  {
    if ((this.PT != null) && (this.PT.aX() != null)) {
      return this.PT.aX().ˊ(this.PU, getMethod(), this.url, bH());
    }
    return Collections.emptyMap();
  }
  
  protected Map<String, String> bH()
  {
    return this.Rg;
  }
  
  public final Map<String, String> getHeaders()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(bF());
    if (!TextUtils.isEmpty(this.As)) {
      localHashMap.put("User-Agent", this.As);
    }
    localHashMap.putAll(bG());
    return localHashMap;
  }
  
  protected String getMethod()
  {
    return this.method;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nm
 * JD-Core Version:    0.7.0.1
 */