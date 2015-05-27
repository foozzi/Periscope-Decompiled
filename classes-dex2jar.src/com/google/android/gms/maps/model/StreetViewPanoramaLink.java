package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ep;
import o.ﺟ;
import o.ﺟ.if;

public class StreetViewPanoramaLink
  implements SafeParcelable
{
  public static final ep CREATOR = new ep();
  private final int BH;
  public final float II;
  public final String Jt;
  
  public StreetViewPanoramaLink(int paramInt, String paramString, float paramFloat)
  {
    this.BH = paramInt;
    this.Jt = paramString;
    if (paramFloat <= 0.0D) {
      paramFloat = paramFloat % 360.0F + 360.0F;
    }
    this.II = (paramFloat % 360.0F);
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
    if (!(paramObject instanceof StreetViewPanoramaLink)) {
      return false;
    }
    paramObject = (StreetViewPanoramaLink)paramObject;
    return (this.Jt.equals(paramObject.Jt)) && (Float.floatToIntBits(this.II) == Float.floatToIntBits(paramObject.II));
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { this.Jt, Float.valueOf(this.II) });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("panoId", this.Jt).ˊ("bearing", Float.valueOf(this.II)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ep.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLink
 * JD-Core Version:    0.7.0.1
 */