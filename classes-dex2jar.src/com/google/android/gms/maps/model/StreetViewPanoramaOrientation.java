package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.er;
import o.ﺟ;
import o.ﺟ.if;
import o.ﺧ;

public class StreetViewPanoramaOrientation
  implements SafeParcelable
{
  public static final er CREATOR = new er();
  private final int BH;
  public final float IH;
  public final float II;
  
  public StreetViewPanoramaOrientation(float paramFloat1, float paramFloat2)
  {
    this(1, paramFloat1, paramFloat2);
  }
  
  public StreetViewPanoramaOrientation(int paramInt, float paramFloat1, float paramFloat2)
  {
    boolean bool;
    if ((-90.0F <= paramFloat1) && (paramFloat1 <= 90.0F)) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˏ(bool, "Tilt needs to be between -90 and 90 inclusive");
    this.BH = paramInt;
    this.IH = (0.0F + paramFloat1);
    if (paramFloat2 <= 0.0D) {
      paramFloat2 = paramFloat2 % 360.0F + 360.0F;
    }
    this.II = (paramFloat2 % 360.0F);
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
    if (!(paramObject instanceof StreetViewPanoramaOrientation)) {
      return false;
    }
    paramObject = (StreetViewPanoramaOrientation)paramObject;
    return (Float.floatToIntBits(this.IH) == Float.floatToIntBits(paramObject.IH)) && (Float.floatToIntBits(this.II) == Float.floatToIntBits(paramObject.II));
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { Float.valueOf(this.IH), Float.valueOf(this.II) });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("tilt", Float.valueOf(this.IH)).ˊ("bearing", Float.valueOf(this.II)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    er.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public static final class if
  {
    public float IH;
    public float II;
    
    public if ᵢ(float paramFloat)
    {
      this.IH = paramFloat;
      return this;
    }
    
    public if ⁱ(float paramFloat)
    {
      this.II = paramFloat;
      return this;
    }
    
    public StreetViewPanoramaOrientation ﭸ()
    {
      return new StreetViewPanoramaOrientation(this.IH, this.II);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaOrientation
 * JD-Core Version:    0.7.0.1
 */