package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.Map;
import o.go;

public class GuestAuthToken
  extends OAuth2Token
{
  @go("guest_token")
  private final String Rh;
  
  public String bI()
  {
    return this.Rh;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    if (!super.equals(paramObject)) {
      return false;
    }
    paramObject = (GuestAuthToken)paramObject;
    return this.Rh != null ? this.Rh.equals(paramObject.Rh) : paramObject.Rh == null;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    int i;
    if (this.Rh != null) {
      i = this.Rh.hashCode();
    } else {
      i = 0;
    }
    return j * 31 + i;
  }
  
  public Map<String, String> ˊ(TwitterAuthConfig paramTwitterAuthConfig, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    paramTwitterAuthConfig = super.ˊ(paramTwitterAuthConfig, paramString1, paramString2, paramMap);
    paramTwitterAuthConfig.put("x-guest-token", bI());
    return paramTwitterAuthConfig;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.GuestAuthToken
 * JD-Core Version:    0.7.0.1
 */