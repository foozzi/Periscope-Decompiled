package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.ew;
import o.ex;
import o.ﺟ;
import o.ﺟ.if;

public final class VisibleRegion
  implements SafeParcelable
{
  public static final ew CREATOR = new ew();
  private final int BH;
  public final LatLng JC;
  public final LatLng JD;
  public final LatLng JE;
  public final LatLng JF;
  public final LatLngBounds JG;
  
  public VisibleRegion(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    this.BH = paramInt;
    this.JC = paramLatLng1;
    this.JD = paramLatLng2;
    this.JE = paramLatLng3;
    this.JF = paramLatLng4;
    this.JG = paramLatLngBounds;
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
    if (!(paramObject instanceof VisibleRegion)) {
      return false;
    }
    paramObject = (VisibleRegion)paramObject;
    return (this.JC.equals(paramObject.JC)) && (this.JD.equals(paramObject.JD)) && (this.JE.equals(paramObject.JE)) && (this.JF.equals(paramObject.JF)) && (this.JG.equals(paramObject.JG));
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { this.JC, this.JD, this.JE, this.JF, this.JG });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("nearLeft", this.JC).ˊ("nearRight", this.JD).ˊ("farLeft", this.JE).ˊ("farRight", this.JF).ˊ("latLngBounds", this.JG).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      ex.ˊ(this, paramParcel, paramInt);
      return;
    }
    ew.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.VisibleRegion
 * JD-Core Version:    0.7.0.1
 */