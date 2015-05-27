package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.dj;
import o.dk;
import o.dw;
import o.dw.if;
import o.eu;
import o.ev;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final eu CREATOR = new eu();
  private final int BH;
  private float IS;
  private boolean IT = true;
  private dw Jw;
  private dk Jx;
  private boolean Jy = true;
  
  public TileOverlayOptions()
  {
    this.BH = 1;
  }
  
  public TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    this.BH = paramInt;
    this.Jw = dw.if.ᔈ(paramIBinder);
    if (this.Jw == null) {
      paramIBinder = null;
    } else {
      paramIBinder = new dj(this);
    }
    this.Jx = paramIBinder;
    this.IT = paramBoolean1;
    this.IS = paramFloat;
    this.Jy = paramBoolean2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean isVisible()
  {
    return this.IT;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      ev.ˊ(this, paramParcel, paramInt);
      return;
    }
    eu.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public float っ()
  {
    return this.IS;
  }
  
  public IBinder ﮉ()
  {
    return this.Jw.asBinder();
  }
  
  public boolean ﮌ()
  {
    return this.Jy;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * JD-Core Version:    0.7.0.1
 */