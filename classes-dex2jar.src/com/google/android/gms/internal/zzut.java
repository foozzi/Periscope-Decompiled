package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.aj;

public class zzut
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzut> CREATOR = new aj();
  public final int BH;
  
  public zzut()
  {
    this(1);
  }
  
  public zzut(int paramInt)
  {
    this.BH = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aj.ˊ(this, paramParcel, paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.zzut
 * JD-Core Version:    0.7.0.1
 */