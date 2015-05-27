package com.twitter.sdk.android.core.internal.oauth;

import android.net.Uri;
import android.net.Uri.Builder;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import java.util.Map;
import java.util.TreeMap;
import javax.net.ssl.SSLSocketFactory;
import o.lz;
import o.mn;
import o.nl;
import o.no;
import o.np;
import o.ns;
import o.sv;
import retrofit.RestAdapter;
import retrofit.client.Response;
import retrofit.http.Header;
import retrofit.http.POST;
import retrofit.http.Query;

public class OAuth1aService
  extends ns
{
  OAuthApi Rl = (OAuthApi)bR().create(OAuthApi.class);
  
  public OAuth1aService(mn parammn, SSLSocketFactory paramSSLSocketFactory, nl paramnl)
  {
    super(parammn, paramSSLSocketFactory, paramnl);
  }
  
  public static String ˊ(TwitterAuthConfig paramTwitterAuthConfig, TwitterAuthToken paramTwitterAuthToken, String paramString1, String paramString2, String paramString3, Map<String, String> paramMap)
  {
    return new no(paramTwitterAuthConfig, paramTwitterAuthToken, paramString1, paramString2, paramString3, paramMap).bJ();
  }
  
  public static OAuthResponse וּ(String paramString)
  {
    paramString = sv.ᐝ(paramString, false);
    String str1 = (String)paramString.get("oauth_token");
    String str2 = (String)paramString.get("oauth_token_secret");
    String str3 = (String)paramString.get("screen_name");
    long l;
    if (paramString.containsKey("user_id")) {
      l = Long.parseLong((String)paramString.get("user_id"));
    } else {
      l = 0L;
    }
    if ((str1 == null) || (str2 == null)) {
      return null;
    }
    return new OAuthResponse(new TwitterAuthToken(str1, str2), str3, l);
  }
  
  String bM()
  {
    return bQ().bE() + "/oauth/request_token";
  }
  
  String bN()
  {
    return bQ().bE() + "/oauth/access_token";
  }
  
  public String ˊ(TwitterAuthConfig paramTwitterAuthConfig)
  {
    return Uri.parse("twittersdk://callback").buildUpon().appendQueryParameter("version", bP().getVersion()).appendQueryParameter("app", paramTwitterAuthConfig.ba()).build().toString();
  }
  
  public String ˊ(TwitterAuthToken paramTwitterAuthToken)
  {
    return bQ().ˎ(new String[] { "oauth", "authorize" }).appendQueryParameter("oauth_token", paramTwitterAuthToken.Qn).build().toString();
  }
  
  public void ˊ(lz<OAuthResponse> paramlz, TwitterAuthToken paramTwitterAuthToken, String paramString)
  {
    String str = bN();
    paramTwitterAuthToken = ˊ(bP().be(), paramTwitterAuthToken, null, "POST", str, null);
    this.Rl.getAccessToken(paramTwitterAuthToken, paramString, ˏ(paramlz));
  }
  
  public void ˎ(lz<OAuthResponse> paramlz)
  {
    TwitterAuthConfig localTwitterAuthConfig = bP().be();
    String str = bM();
    this.Rl.getTempToken(ˊ(localTwitterAuthConfig, null, ˊ(localTwitterAuthConfig), "POST", str, null), ˏ(paramlz));
  }
  
  lz<Response> ˏ(lz<OAuthResponse> paramlz)
  {
    return new np(this, paramlz);
  }
  
  static abstract interface OAuthApi
  {
    @POST("/oauth/access_token")
    public abstract void getAccessToken(@Header("Authorization") String paramString1, @Query("oauth_verifier") String paramString2, lz<Response> paramlz);
    
    @POST("/oauth/request_token")
    public abstract void getTempToken(@Header("Authorization") String paramString, lz<Response> paramlz);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.OAuth1aService
 * JD-Core Version:    0.7.0.1
 */