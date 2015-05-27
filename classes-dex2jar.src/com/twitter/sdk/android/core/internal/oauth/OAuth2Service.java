package com.twitter.sdk.android.core.internal.oauth;

import o.lz;
import o.ns;
import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.Header;
import retrofit.http.Headers;
import retrofit.http.POST;

public class OAuth2Service
  extends ns
{
  public static String ˊ(OAuth2Token paramOAuth2Token)
  {
    return "Bearer " + paramOAuth2Token.bO();
  }
  
  static abstract interface OAuth2Api
  {
    @FormUrlEncoded
    @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
    @POST("/oauth2/token")
    public abstract void getAppAuthToken(@Header("Authorization") String paramString1, @Field("grant_type") String paramString2, lz<OAuth2Token> paramlz);
    
    @POST("/1.1/guest/activate.json")
    public abstract void getGuestToken(@Header("Authorization") String paramString, lz<Object> paramlz);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.OAuth2Service
 * JD-Core Version:    0.7.0.1
 */