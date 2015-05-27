package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import o.cg;
import o.fa;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final fa CREATOR = new fa();
  private final int BH;
  private Boolean HX;
  private Boolean Id = Boolean.valueOf(true);
  private StreetViewPanoramaCamera Is;
  private String It;
  private LatLng Iu;
  private Integer Iv;
  private Boolean Iw = Boolean.valueOf(true);
  private Boolean Ix = Boolean.valueOf(true);
  private Boolean Iy = Boolean.valueOf(true);
  
  public StreetViewPanoramaOptions()
  {
    this.BH = 1;
  }
  
  public StreetViewPanoramaOptions(int paramInt, StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5)
  {
    this.BH = paramInt;
    this.Is = paramStreetViewPanoramaCamera;
    this.Iu = paramLatLng;
    this.Iv = paramInteger;
    this.It = paramString;
    this.Iw = cg.ʻ(paramByte1);
    this.Id = cg.ʻ(paramByte2);
    this.Ix = cg.ʻ(paramByte3);
    this.Iy = cg.ʻ(paramByte4);
    this.HX = cg.ʻ(paramByte5);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fa.ˊ(this, paramParcel, paramInt);
  }
  
  public byte ӟ()
  {
    return cg.ˋ(this.HX);
  }
  
  public byte յ()
  {
    return cg.ˋ(this.Id);
  }
  
  public byte پ()
  {
    return cg.ˋ(this.Iw);
  }
  
  public byte ڑ()
  {
    return cg.ˋ(this.Ix);
  }
  
  public byte ۅ()
  {
    return cg.ˋ(this.Iy);
  }
  
  public StreetViewPanoramaCamera ۉ()
  {
    return this.Is;
  }
  
  public LatLng ے()
  {
    return this.Iu;
  }
  
  public Integer ܘ()
  {
    return this.Iv;
  }
  
  public String ܟ()
  {
    return this.It;
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * JD-Core Version:    0.7.0.1
 */