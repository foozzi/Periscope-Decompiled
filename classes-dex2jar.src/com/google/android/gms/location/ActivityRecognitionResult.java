package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import o.at;

public class ActivityRecognitionResult
  implements SafeParcelable
{
  public static final at CREATOR = new at();
  private final int BH = 1;
  public List<DetectedActivity> Hc;
  public long Hd;
  public long He;
  
  public ActivityRecognitionResult(int paramInt, List<DetectedActivity> paramList, long paramLong1, long paramLong2)
  {
    this.Hc = paramList;
    this.Hd = paramLong1;
    this.He = paramLong2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "ActivityRecognitionResult [probableActivities=" + this.Hc + ", timeMillis=" + this.Hd + ", elapsedRealtimeMillis=" + this.He + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    at.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.ActivityRecognitionResult
 * JD-Core Version:    0.7.0.1
 */