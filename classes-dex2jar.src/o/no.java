package o;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class no
{
  private static final SecureRandom Ri = new SecureRandom();
  private final TwitterAuthConfig PU;
  private final Map<String, String> Rg;
  private final TwitterAuthToken Rj;
  private final String Rk;
  private final String method;
  private final String url;
  
  public no(TwitterAuthConfig paramTwitterAuthConfig, TwitterAuthToken paramTwitterAuthToken, String paramString1, String paramString2, String paramString3, Map<String, String> paramMap)
  {
    this.PU = paramTwitterAuthConfig;
    this.Rj = paramTwitterAuthToken;
    this.Rk = paramString1;
    this.method = paramString2;
    this.url = paramString3;
    this.Rg = paramMap;
  }
  
  private String bK()
  {
    return String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(Ri.nextLong()));
  }
  
  private String bL()
  {
    String str;
    if (this.Rj != null) {
      str = this.Rj.Qo;
    } else {
      str = null;
    }
    return sv.৲(this.PU.bb()) + '&' + sv.৲(str);
  }
  
  private String getTimestamp()
  {
    return Long.toString(System.currentTimeMillis() / 1000L);
  }
  
  private String ˊ(TreeMap<String, String> paramTreeMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramTreeMap.size();
    int i = 0;
    paramTreeMap = paramTreeMap.entrySet().iterator();
    while (paramTreeMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramTreeMap.next();
      localStringBuilder.append(sv.ﭠ(sv.ﭠ((String)localEntry.getKey()))).append("%3D").append(sv.ﭠ(sv.ﭠ((String)localEntry.getValue())));
      i += 1;
      if (i < j) {
        localStringBuilder.append("%26");
      }
    }
    return localStringBuilder.toString();
  }
  
  private void ˊ(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      paramStringBuilder.append(' ').append(sv.ﭠ(paramString1)).append("=\"").append(sv.ﭠ(paramString2)).append("\",");
    }
  }
  
  public String bJ()
  {
    String str1 = bK();
    String str2 = getTimestamp();
    return ˊ(str1, str2, ᵧ(ˌ(str1, str2)));
  }
  
  String ˊ(String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder("OAuth");
    ˊ(localStringBuilder, "oauth_callback", this.Rk);
    ˊ(localStringBuilder, "oauth_consumer_key", this.PU.ba());
    ˊ(localStringBuilder, "oauth_nonce", paramString1);
    ˊ(localStringBuilder, "oauth_signature", paramString3);
    ˊ(localStringBuilder, "oauth_signature_method", "HMAC-SHA1");
    ˊ(localStringBuilder, "oauth_timestamp", paramString2);
    if (this.Rj != null) {
      paramString1 = this.Rj.Qn;
    } else {
      paramString1 = null;
    }
    ˊ(localStringBuilder, "oauth_token", paramString1);
    ˊ(localStringBuilder, "oauth_version", "1.0");
    return localStringBuilder.substring(0, localStringBuilder.length() - 1);
  }
  
  String ˌ(String paramString1, String paramString2)
  {
    URI localURI = URI.create(this.url);
    TreeMap localTreeMap = sv.ˊ(localURI, true);
    if (this.Rg != null) {
      localTreeMap.putAll(this.Rg);
    }
    if (this.Rk != null) {
      localTreeMap.put("oauth_callback", this.Rk);
    }
    localTreeMap.put("oauth_consumer_key", this.PU.ba());
    localTreeMap.put("oauth_nonce", paramString1);
    localTreeMap.put("oauth_signature_method", "HMAC-SHA1");
    localTreeMap.put("oauth_timestamp", paramString2);
    if ((this.Rj != null) && (this.Rj.Qn != null)) {
      localTreeMap.put("oauth_token", this.Rj.Qn);
    }
    localTreeMap.put("oauth_version", "1.0");
    paramString1 = localURI.getScheme() + "://" + localURI.getHost() + localURI.getPath();
    return this.method.toUpperCase(Locale.ENGLISH) + '&' + sv.ﭠ(paramString1) + '&' + ˊ(localTreeMap);
  }
  
  String ᵧ(String paramString)
  {
    try
    {
      Object localObject = bL();
      paramString = paramString.getBytes("UTF8");
      localObject = new SecretKeySpec(((String)localObject).getBytes("UTF8"), "HmacSHA1");
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init((Key)localObject);
      paramString = localMac.doFinal(paramString);
      paramString = new String(sn.if.ˈ(paramString, 0, paramString.length), "UTF8");
      return paramString;
    }
    catch (InvalidKeyException paramString)
    {
      pj.cd().ˏ("Twitter", "Failed to calculate signature", paramString);
      return "";
    }
    catch (NoSuchAlgorithmException paramString)
    {
      pj.cd().ˏ("Twitter", "Failed to calculate signature", paramString);
      return "";
    }
    catch (UnsupportedEncodingException paramString)
    {
      pj.cd().ˏ("Twitter", "Failed to calculate signature", paramString);
    }
    return "";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.no
 * JD-Core Version:    0.7.0.1
 */