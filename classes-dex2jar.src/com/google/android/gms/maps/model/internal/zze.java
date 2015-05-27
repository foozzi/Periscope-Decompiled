package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.do;

public final class zze
  implements SafeParcelable
{
  public static final do CREATOR = new do();
  private final int BH;
  private zza JK;
  
  public zze()
  {
    this.BH = 1;
  }
  
  public zze(int paramInt, zza paramzza)
  {
    this.BH = paramInt;
    this.JK = paramzza;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    do.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public zza ﺙ()
  {
    return this.JK;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.internal.zze
 * JD-Core Version:    0.7.0.1
 */