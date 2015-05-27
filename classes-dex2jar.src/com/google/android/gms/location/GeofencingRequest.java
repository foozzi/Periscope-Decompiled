package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzpk;
import java.util.List;
import o.bd;

public class GeofencingRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GeofencingRequest> CREATOR = new bd();
  private final int BH;
  private final List<zzpk> Hi;
  private final int Hj;
  
  public GeofencingRequest(int paramInt1, List<zzpk> paramList, int paramInt2)
  {
    this.BH = paramInt1;
    this.Hi = paramList;
    this.Hj = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bd.ˊ(this, paramParcel, paramInt);
  }
  
  public List<zzpk> ƈ()
  {
    return this.Hi;
  }
  
  public int ȝ()
  {
    return this.Hj;
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest
 * JD-Core Version:    0.7.0.1
 */