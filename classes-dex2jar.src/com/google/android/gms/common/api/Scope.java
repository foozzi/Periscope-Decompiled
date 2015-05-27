package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ᴘ;
import o.ﺧ;

public final class Scope
  implements SafeParcelable
{
  public static final Parcelable.Creator<Scope> CREATOR = new ᴘ();
  public final int BH;
  private final String Ct;
  
  public Scope(int paramInt, String paramString)
  {
    ﺧ.ˋ(paramString, "scopeUri must not be null or empty");
    this.BH = paramInt;
    this.Ct = paramString;
  }
  
  public Scope(String paramString)
  {
    this(1, paramString);
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
    if (!(paramObject instanceof Scope)) {
      return false;
    }
    return this.Ct.equals(((Scope)paramObject).Ct);
  }
  
  public int hashCode()
  {
    return this.Ct.hashCode();
  }
  
  public String toString()
  {
    return this.Ct;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ᴘ.ˊ(this, paramParcel, paramInt);
  }
  
  public String ৰ()
  {
    return this.Ct;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.Scope
 * JD-Core Version:    0.7.0.1
 */