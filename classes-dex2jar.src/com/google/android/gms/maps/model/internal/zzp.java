package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.dx;

public final class zzp
  implements SafeParcelable
{
  public static final dx CREATOR = new dx();
  private final int BH;
  private zza JL;
  
  public zzp()
  {
    this.BH = 1;
  }
  
  public zzp(int paramInt, zza paramzza)
  {
    this.BH = paramInt;
    this.JL = paramzza;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public zza e()
  {
    return this.JL;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    dx.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.internal.zzp
 * JD-Core Version:    0.7.0.1
 */