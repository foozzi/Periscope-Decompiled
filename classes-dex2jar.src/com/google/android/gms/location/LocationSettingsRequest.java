package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import o.bj;

public class LocationSettingsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new bj();
  private final int BH;
  private final List<LocationRequest> Hu;
  private final boolean Hv;
  private final boolean Hw;
  
  public LocationSettingsRequest(int paramInt, List<LocationRequest> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.BH = paramInt;
    this.Hu = paramList;
    this.Hv = paramBoolean1;
    this.Hw = paramBoolean2;
  }
  
  private LocationSettingsRequest(List<LocationRequest> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(1, paramList, paramBoolean1, paramBoolean2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bj.ˊ(this, paramParcel, paramInt);
  }
  
  public List<LocationRequest> ʜ()
  {
    return Collections.unmodifiableList(this.Hu);
  }
  
  public boolean Ύ()
  {
    return this.Hv;
  }
  
  public boolean Κ()
  {
    return this.Hw;
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public static final class if
  {
    private boolean Hv = false;
    private boolean Hw = false;
    private final ArrayList<LocationRequest> Hx = new ArrayList();
    
    public if ˋ(LocationRequest paramLocationRequest)
    {
      this.Hx.add(paramLocationRequest);
      return this;
    }
    
    public LocationSettingsRequest Λ()
    {
      return new LocationSettingsRequest(this.Hx, this.Hv, this.Hw, null);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.LocationSettingsRequest
 * JD-Core Version:    0.7.0.1
 */