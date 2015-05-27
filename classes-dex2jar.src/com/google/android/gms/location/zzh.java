package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import o.bi;

public class zzh
  implements SafeParcelable
{
  public static final bi CREATOR = new bi();
  public static final List<Location> HL = ;
  private final int BH;
  public List<Location> HM;
  
  public zzh(int paramInt, List<Location> paramList)
  {
    this.BH = paramInt;
    this.HM = paramList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzh)) {
      return false;
    }
    paramObject = (zzh)paramObject;
    if (paramObject.HM.size() != this.HM.size()) {
      return false;
    }
    paramObject = paramObject.HM.iterator();
    Iterator localIterator = this.HM.iterator();
    while (paramObject.hasNext())
    {
      Location localLocation1 = (Location)localIterator.next();
      Location localLocation2 = (Location)paramObject.next();
      if (localLocation1.getTime() != localLocation2.getTime()) {
        return false;
      }
    }
    return true;
  }
  
  public int hashCode()
  {
    int i = 17;
    Iterator localIterator = this.HM.iterator();
    while (localIterator.hasNext())
    {
      long l = ((Location)localIterator.next()).getTime();
      i = i * 31 + (int)(l >>> 32 ^ l);
    }
    return i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LocationResult[success: ").append(н());
    localStringBuilder.append(", locations: ").append(this.HM);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bi.ˊ(this, paramParcel, paramInt);
  }
  
  public boolean н()
  {
    return !this.HM.isEmpty();
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.zzh
 * JD-Core Version:    0.7.0.1
 */