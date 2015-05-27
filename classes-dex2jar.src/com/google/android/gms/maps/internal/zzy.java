package com.google.android.gms.maps.internal;

import android.graphics.Point;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.de;

public class zzy
  implements SafeParcelable
{
  public static final de CREATOR = new de();
  private final Point ID;
  private final int versionCode;
  
  public zzy(int paramInt, Point paramPoint)
  {
    this.versionCode = paramInt;
    this.ID = paramPoint;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof zzy)) {
      return false;
    }
    paramObject = (zzy)paramObject;
    return this.ID.equals(paramObject.ID);
  }
  
  public int hashCode()
  {
    return this.ID.hashCode();
  }
  
  public String toString()
  {
    return this.ID.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    de.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.versionCode;
  }
  
  public Point Ῠ()
  {
    return this.ID;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.internal.zzy
 * JD-Core Version:    0.7.0.1
 */