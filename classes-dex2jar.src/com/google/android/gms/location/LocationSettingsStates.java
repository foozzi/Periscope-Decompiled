package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.bk;

public class LocationSettingsStates
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new bk();
  private final int BH;
  private final boolean HA;
  private final boolean HB;
  private final boolean HC;
  private final boolean HD;
  private final boolean HE;
  private final boolean HF;
  
  public LocationSettingsStates(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    this.BH = paramInt;
    this.HA = paramBoolean1;
    this.HB = paramBoolean2;
    this.HC = paramBoolean3;
    this.HD = paramBoolean4;
    this.HE = paramBoolean5;
    this.HF = paramBoolean6;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bk.ˊ(this, paramParcel, paramInt);
  }
  
  public boolean ϝ()
  {
    return this.HA;
  }
  
  public boolean Ϯ()
  {
    return this.HD;
  }
  
  public boolean ϯ()
  {
    return this.HB;
  }
  
  public boolean ϵ()
  {
    return this.HE;
  }
  
  public boolean Ϲ()
  {
    return this.HC;
  }
  
  public boolean С()
  {
    return this.HF;
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.LocationSettingsStates
 * JD-Core Version:    0.7.0.1
 */