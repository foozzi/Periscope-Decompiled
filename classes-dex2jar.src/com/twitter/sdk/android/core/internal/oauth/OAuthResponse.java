package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.sdk.android.core.TwitterAuthToken;
import o.nr;

public class OAuthResponse
  implements Parcelable
{
  public static final Parcelable.Creator<OAuthResponse> CREATOR = new nr();
  public final TwitterAuthToken Rj;
  public final long Rq;
  public final String nF;
  
  private OAuthResponse(Parcel paramParcel)
  {
    this.Rj = ((TwitterAuthToken)paramParcel.readParcelable(TwitterAuthToken.class.getClassLoader()));
    this.nF = paramParcel.readString();
    this.Rq = paramParcel.readLong();
  }
  
  public OAuthResponse(TwitterAuthToken paramTwitterAuthToken, String paramString, long paramLong)
  {
    this.Rj = paramTwitterAuthToken;
    this.nF = paramString;
    this.Rq = paramLong;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "authToken=" + this.Rj + ",userName=" + this.nF + ",userId=" + this.Rq;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.Rj, paramInt);
    paramParcel.writeString(this.nF);
    paramParcel.writeLong(this.Rq);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.OAuthResponse
 * JD-Core Version:    0.7.0.1
 */