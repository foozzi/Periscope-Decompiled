package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.HashMap;
import java.util.Map;
import o.go;
import o.lw;
import o.nq;

public class OAuth2Token
  extends lw
  implements Parcelable
{
  public static final Parcelable.Creator<OAuth2Token> CREATOR = new nq();
  @go("token_type")
  private final String Ro;
  @go("access_token")
  private final String Rp;
  
  private OAuth2Token(Parcel paramParcel)
  {
    this.Ro = paramParcel.readString();
    this.Rp = paramParcel.readString();
  }
  
  public String bO()
  {
    return this.Rp;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (OAuth2Token)paramObject;
    if (this.Rp != null ? !this.Rp.equals(paramObject.Rp) : paramObject.Rp != null) {
      return false;
    }
    return this.Ro != null ? this.Ro.equals(paramObject.Ro) : paramObject.Ro == null;
  }
  
  public int hashCode()
  {
    int i;
    if (this.Ro != null) {
      i = this.Ro.hashCode();
    } else {
      i = 0;
    }
    int j;
    if (this.Rp != null) {
      j = this.Rp.hashCode();
    } else {
      j = 0;
    }
    return i * 31 + j;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.Ro);
    paramParcel.writeString(this.Rp);
  }
  
  public Map<String, String> ˊ(TwitterAuthConfig paramTwitterAuthConfig, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    paramTwitterAuthConfig = new HashMap();
    paramTwitterAuthConfig.put("Authorization", OAuth2Service.ˊ(this));
    return paramTwitterAuthConfig;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.OAuth2Token
 * JD-Core Version:    0.7.0.1
 */