package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.bl;
import o.ﺟ;

public class zzl
  implements SafeParcelable
{
  public static final bl CREATOR = new bl();
  private final int BH;
  public int HN;
  public int HO;
  public long HP;
  
  public zzl(int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    this.BH = paramInt1;
    this.HN = paramInt2;
    this.HO = paramInt3;
    this.HP = paramLong;
  }
  
  private String ļ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      return "STATUS_SUCCESSFUL";
    case 2: 
      return "STATUS_TIMED_OUT_ON_SCAN";
    case 3: 
      return "STATUS_NO_INFO_IN_DATABASE";
    case 4: 
      return "STATUS_INVALID_SCAN";
    case 5: 
      return "STATUS_UNABLE_TO_QUERY_DATABASE";
    case 6: 
      return "STATUS_SCANS_DISABLED_IN_SETTINGS";
    case 7: 
      return "STATUS_LOCATION_DISABLED_IN_SETTINGS";
    case 8: 
      return "STATUS_IN_PROGRESS";
    }
    return "STATUS_UNKNOWN";
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzl)) {
      return false;
    }
    paramObject = (zzl)paramObject;
    return (this.HN == paramObject.HN) && (this.HO == paramObject.HO) && (this.HP == paramObject.HP);
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { Integer.valueOf(this.HN), Integer.valueOf(this.HO), Long.valueOf(this.HP) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LocationStatus[cell status: ").append(ļ(this.HN));
    localStringBuilder.append(", wifi status: ").append(ļ(this.HO));
    localStringBuilder.append(", elapsed realtime ns: ").append(this.HP);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bl.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.zzl
 * JD-Core Version:    0.7.0.1
 */