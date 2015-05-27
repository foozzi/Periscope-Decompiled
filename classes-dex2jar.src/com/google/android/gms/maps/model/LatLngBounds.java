package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.ee;
import o.ef;
import o.ﺟ;
import o.ﺟ.if;
import o.ﺧ;

public final class LatLngBounds
  implements SafeParcelable
{
  public static final ee CREATOR = new ee();
  private final int BH;
  public final LatLng Je;
  public final LatLng Jf;
  
  public LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    ﺧ.ʼ(paramLatLng1, "null southwest");
    ﺧ.ʼ(paramLatLng2, "null northeast");
    boolean bool;
    if (paramLatLng2.Jc >= paramLatLng1.Jc) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˊ(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(paramLatLng1.Jc), Double.valueOf(paramLatLng2.Jc) });
    this.BH = paramInt;
    this.Je = paramLatLng1;
    this.Jf = paramLatLng2;
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
    if (!(paramObject instanceof LatLngBounds)) {
      return false;
    }
    paramObject = (LatLngBounds)paramObject;
    return (this.Je.equals(paramObject.Je)) && (this.Jf.equals(paramObject.Jf));
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { this.Je, this.Jf });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("southwest", this.Je).ˊ("northeast", this.Jf).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      ef.ˊ(this, paramParcel, paramInt);
      return;
    }
    ee.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * JD-Core Version:    0.7.0.1
 */