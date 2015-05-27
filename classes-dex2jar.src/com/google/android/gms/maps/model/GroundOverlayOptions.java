package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.df;
import o.ec;
import o.ed;
import o.ﱟ;
import o.ﱟ.if;

public final class GroundOverlayOptions
  implements SafeParcelable
{
  public static final ec CREATOR = new ec();
  private final int BH;
  private float IM;
  private float IS;
  private boolean IT = true;
  private df IU;
  private LatLng IV;
  private float IW;
  private float IX;
  private LatLngBounds IY;
  private float IZ = 0.0F;
  private float Ja = 0.5F;
  private float Jb = 0.5F;
  
  public GroundOverlayOptions()
  {
    this.BH = 1;
  }
  
  public GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    this.BH = paramInt;
    this.IU = new df(ﱟ.if.ʼ(paramIBinder));
    this.IV = paramLatLng;
    this.IW = paramFloat1;
    this.IX = paramFloat2;
    this.IY = paramLatLngBounds;
    this.IM = paramFloat3;
    this.IS = paramFloat4;
    this.IT = paramBoolean;
    this.IZ = paramFloat5;
    this.Ja = paramFloat6;
    this.Jb = paramFloat7;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float getBearing()
  {
    return this.IM;
  }
  
  public float getHeight()
  {
    return this.IX;
  }
  
  public float getWidth()
  {
    return this.IW;
  }
  
  public boolean isVisible()
  {
    return this.IT;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      ed.ˊ(this, paramParcel, paramInt);
      return;
    }
    ec.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public float っ()
  {
    return this.IS;
  }
  
  public IBinder へ()
  {
    return this.IU.п().asBinder();
  }
  
  public LatLng ゥ()
  {
    return this.IV;
  }
  
  public LatLngBounds ト()
  {
    return this.IY;
  }
  
  public float リ()
  {
    return this.IZ;
  }
  
  public float ヮ()
  {
    return this.Ja;
  }
  
  public float ヶ()
  {
    return this.Jb;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * JD-Core Version:    0.7.0.1
 */