package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;
import java.util.ArrayList;

public class at
  implements Parcelable.Creator<ActivityRecognitionResult>
{
  public static void ˊ(ActivityRecognitionResult paramActivityRecognitionResult, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˋ(paramParcel, 1, paramActivityRecognitionResult.Hc, false);
    ṯ.ˎ(paramParcel, 1000, paramActivityRecognitionResult.ถ());
    ṯ.ˊ(paramParcel, 2, paramActivityRecognitionResult.Hd);
    ṯ.ˊ(paramParcel, 3, paramActivityRecognitionResult.He);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public ActivityRecognitionResult ᵔ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    ArrayList localArrayList = null;
    long l2 = 0L;
    long l1 = 0L;
    while (paramParcel.dataPosition() < j)
    {
      int k = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(k))
      {
      default: 
        break;
      case 1: 
        localArrayList = ᴭ.ˎ(paramParcel, k, DetectedActivity.CREATOR);
        break;
      case 1000: 
        i = ᴭ.ʻ(paramParcel, k);
        break;
      case 2: 
        l2 = ᴭ.ʽ(paramParcel, k);
        break;
      case 3: 
        l1 = ᴭ.ʽ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new ActivityRecognitionResult(i, localArrayList, l2, l1);
  }
  
  public ActivityRecognitionResult[] ﭜ(int paramInt)
  {
    return new ActivityRecognitionResult[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.at
 * JD-Core Version:    0.7.0.1
 */