package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import o.mk;

public class TwitterAuthConfig
  implements Parcelable
{
  public static final Parcelable.Creator<TwitterAuthConfig> CREATOR = new mk();
  private final String Ql;
  private final String Qm;
  
  private TwitterAuthConfig(Parcel paramParcel)
  {
    this.Ql = paramParcel.readString();
    this.Qm = paramParcel.readString();
  }
  
  public TwitterAuthConfig(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      throw new IllegalArgumentException("TwitterAuthConfig must not be created with null consumer key or secret.");
    }
    this.Ql = ᘁ(paramString1);
    this.Qm = ᘁ(paramString2);
  }
  
  static String ᘁ(String paramString)
  {
    if (paramString != null) {
      return paramString.trim();
    }
    return null;
  }
  
  public String ba()
  {
    return this.Ql;
  }
  
  public String bb()
  {
    return this.Qm;
  }
  
  public int bc()
  {
    return 140;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.Ql);
    paramParcel.writeString(this.Qm);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.TwitterAuthConfig
 * JD-Core Version:    0.7.0.1
 */