package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Comparator;
import o.au;
import o.av;

public class DetectedActivity
  implements SafeParcelable
{
  public static final av CREATOR = new av();
  public static final Comparator<DetectedActivity> Hf = new au();
  private final int BH;
  public int Hg;
  public int Hh;
  
  public DetectedActivity(int paramInt1, int paramInt2, int paramInt3)
  {
    this.BH = paramInt1;
    this.Hg = paramInt2;
    this.Hh = paramInt3;
  }
  
  private int ﭡ(int paramInt)
  {
    if (paramInt > 9) {
      return 4;
    }
    return paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getType()
  {
    return ﭡ(this.Hg);
  }
  
  public String toString()
  {
    return "DetectedActivity [type=" + getType() + ", confidence=" + this.Hh + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    av.ˊ(this, paramParcel, paramInt);
  }
  
  public int Ɔ()
  {
    return this.Hh;
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.DetectedActivity
 * JD-Core Version:    0.7.0.1
 */