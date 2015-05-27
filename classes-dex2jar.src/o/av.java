package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.DetectedActivity;

public class av
  implements Parcelable.Creator<DetectedActivity>
{
  public static void ˊ(DetectedActivity paramDetectedActivity, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramDetectedActivity.Hg);
    ṯ.ˎ(paramParcel, 1000, paramDetectedActivity.ถ());
    ṯ.ˎ(paramParcel, 2, paramDetectedActivity.Hh);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public DetectedActivity ᵢ(Parcel paramParcel)
  {
    int m = ᴭ.ˌ(paramParcel);
    int k = 0;
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(n))
      {
      default: 
        break;
      case 1: 
        j = ᴭ.ʻ(paramParcel, n);
        break;
      case 1000: 
        k = ᴭ.ʻ(paramParcel, n);
        break;
      case 2: 
        i = ᴭ.ʻ(paramParcel, n);
        break;
      }
      ᴭ.ˋ(paramParcel, n);
    }
    if (paramParcel.dataPosition() != m) {
      throw new ᴭ.if("Overread allowed size end=" + m, paramParcel);
    }
    return new DetectedActivity(k, j, i);
  }
  
  public DetectedActivity[] ﭤ(int paramInt)
  {
    return new DetectedActivity[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.av
 * JD-Core Version:    0.7.0.1
 */