package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.eq;
import o.ﺟ;
import o.ﺟ.if;

public class StreetViewPanoramaLocation
  implements SafeParcelable
{
  public static final eq CREATOR = new eq();
  private final int BH;
  public final String Jt;
  public final StreetViewPanoramaLink[] Ju;
  public final LatLng Jv;
  
  public StreetViewPanoramaLocation(int paramInt, StreetViewPanoramaLink[] paramArrayOfStreetViewPanoramaLink, LatLng paramLatLng, String paramString)
  {
    this.BH = paramInt;
    this.Ju = paramArrayOfStreetViewPanoramaLink;
    this.Jv = paramLatLng;
    this.Jt = paramString;
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
    if (!(paramObject instanceof StreetViewPanoramaLocation)) {
      return false;
    }
    paramObject = (StreetViewPanoramaLocation)paramObject;
    return (this.Jt.equals(paramObject.Jt)) && (this.Jv.equals(paramObject.Jv));
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { this.Jv, this.Jt });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("panoId", this.Jt).ˊ("position", this.Jv.toString()).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    eq.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLocation
 * JD-Core Version:    0.7.0.1
 */