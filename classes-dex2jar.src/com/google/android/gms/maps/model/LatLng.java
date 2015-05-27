package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.eg;
import o.eh;

public final class LatLng
  implements SafeParcelable
{
  public static final eg CREATOR = new eg();
  private final int BH;
  public final double Jc;
  public final double Jd;
  
  public LatLng(double paramDouble1, double paramDouble2)
  {
    this(1, paramDouble1, paramDouble2);
  }
  
  public LatLng(int paramInt, double paramDouble1, double paramDouble2)
  {
    this.BH = paramInt;
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D)) {
      this.Jd = paramDouble2;
    } else {
      this.Jd = (((paramDouble2 - 180.0D) % 360.0D + 360.0D) % 360.0D - 180.0D);
    }
    this.Jc = Math.max(-90.0D, Math.min(90.0D, paramDouble1));
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
    if (!(paramObject instanceof LatLng)) {
      return false;
    }
    paramObject = (LatLng)paramObject;
    return (Double.doubleToLongBits(this.Jc) == Double.doubleToLongBits(paramObject.Jc)) && (Double.doubleToLongBits(this.Jd) == Double.doubleToLongBits(paramObject.Jd));
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(this.Jc);
    int i = (int)(l >>> 32 ^ l);
    l = Double.doubleToLongBits(this.Jd);
    return (i + 31) * 31 + (int)(l >>> 32 ^ l);
  }
  
  public String toString()
  {
    return "lat/lng: (" + this.Jc + "," + this.Jd + ")";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      eh.ˊ(this, paramParcel, paramInt);
      return;
    }
    eg.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.LatLng
 * JD-Core Version:    0.7.0.1
 */