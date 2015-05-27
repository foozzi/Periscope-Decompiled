package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.bb;
import o.ᒹ;

public class LocationSettingsResult
  implements ᒹ, SafeParcelable
{
  public static final bb CREATOR = new bb();
  private final int BH;
  private final Status Hy;
  private final LocationSettingsStates Hz;
  
  public LocationSettingsResult(int paramInt, Status paramStatus, LocationSettingsStates paramLocationSettingsStates)
  {
    this.BH = paramInt;
    this.Hy = paramStatus;
    this.Hz = paramLocationSettingsStates;
  }
  
  public LocationSettingsResult(Status paramStatus)
  {
    this(1, paramStatus, null);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bb.ˊ(this, paramParcel, paramInt);
  }
  
  public LocationSettingsStates ϙ()
  {
    return this.Hz;
  }
  
  public Status হ()
  {
    return this.Hy;
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.LocationSettingsResult
 * JD-Core Version:    0.7.0.1
 */