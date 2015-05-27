package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.eo;
import o.ﺟ;
import o.ﺟ.if;
import o.ﺧ;

public class StreetViewPanoramaCamera
  implements SafeParcelable
{
  public static final eo CREATOR = new eo();
  private final int BH;
  public final float IG;
  public final float IH;
  public final float II;
  private StreetViewPanoramaOrientation Js;
  
  public StreetViewPanoramaCamera(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool;
    if ((-90.0F <= paramFloat2) && (paramFloat2 <= 90.0F)) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˏ(bool, "Tilt needs to be between -90 and 90 inclusive");
    this.BH = paramInt;
    if (paramFloat1 <= 0.0D) {
      paramFloat1 = 0.0F;
    }
    this.IG = paramFloat1;
    this.IH = (0.0F + paramFloat2);
    if (paramFloat3 <= 0.0D) {
      paramFloat1 = paramFloat3 % 360.0F + 360.0F;
    } else {
      paramFloat1 = paramFloat3;
    }
    this.II = (paramFloat1 % 360.0F);
    this.Js = new StreetViewPanoramaOrientation.if().ᵢ(paramFloat2).ⁱ(paramFloat3).ﭸ();
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
    if (!(paramObject instanceof StreetViewPanoramaCamera)) {
      return false;
    }
    paramObject = (StreetViewPanoramaCamera)paramObject;
    return (Float.floatToIntBits(this.IG) == Float.floatToIntBits(paramObject.IG)) && (Float.floatToIntBits(this.IH) == Float.floatToIntBits(paramObject.IH)) && (Float.floatToIntBits(this.II) == Float.floatToIntBits(paramObject.II));
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { Float.valueOf(this.IG), Float.valueOf(this.IH), Float.valueOf(this.II) });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("zoom", Float.valueOf(this.IG)).ˊ("tilt", Float.valueOf(this.IH)).ˊ("bearing", Float.valueOf(this.II)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    eo.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaCamera
 * JD-Core Version:    0.7.0.1
 */