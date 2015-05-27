package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import java.util.HashMap;
import java.util.Map;
import o.go;
import o.lw;
import o.mm;

public class TwitterAuthToken
  extends lw
  implements Parcelable
{
  public static final Parcelable.Creator<TwitterAuthToken> CREATOR = new mm();
  @go("token")
  public final String Qn;
  @go("secret")
  public final String Qo;
  
  private TwitterAuthToken(Parcel paramParcel)
  {
    this.Qn = paramParcel.readString();
    this.Qo = paramParcel.readString();
  }
  
  public TwitterAuthToken(String paramString1, String paramString2)
  {
    this.Qn = paramString1;
    this.Qo = paramString2;
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
    if (!(paramObject instanceof TwitterAuthToken)) {
      return false;
    }
    paramObject = (TwitterAuthToken)paramObject;
    if (this.Qo != null ? !this.Qo.equals(paramObject.Qo) : paramObject.Qo != null) {
      return false;
    }
    return this.Qn != null ? this.Qn.equals(paramObject.Qn) : paramObject.Qn == null;
  }
  
  public int hashCode()
  {
    int i;
    if (this.Qn != null) {
      i = this.Qn.hashCode();
    } else {
      i = 0;
    }
    int j;
    if (this.Qo != null) {
      j = this.Qo.hashCode();
    } else {
      j = 0;
    }
    return i * 31 + j;
  }
  
  public String toString()
  {
    return "token=" + this.Qn + ",secret=" + this.Qo;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.Qn);
    paramParcel.writeString(this.Qo);
  }
  
  public Map<String, String> ˊ(TwitterAuthConfig paramTwitterAuthConfig, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("Authorization", OAuth1aService.ˊ(paramTwitterAuthConfig, this, null, paramString1, paramString2, paramMap));
    return localHashMap;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.TwitterAuthToken
 * JD-Core Version:    0.7.0.1
 */