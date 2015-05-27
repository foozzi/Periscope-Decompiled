package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationSettingsStates;

public class bb
  implements Parcelable.Creator<LocationSettingsResult>
{
  public static void ˊ(LocationSettingsResult paramLocationSettingsResult, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˊ(paramParcel, 1, paramLocationSettingsResult.হ(), paramInt, false);
    ṯ.ˎ(paramParcel, 1000, paramLocationSettingsResult.ถ());
    ṯ.ˊ(paramParcel, 2, paramLocationSettingsResult.ϙ(), paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public LocationSettingsResult ⁱ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    Status localStatus = null;
    LocationSettingsStates localLocationSettingsStates = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(k))
      {
      default: 
        break;
      case 1: 
        localStatus = (Status)ᴭ.ˊ(paramParcel, k, Status.CREATOR);
        break;
      case 1000: 
        i = ᴭ.ʻ(paramParcel, k);
        break;
      case 2: 
        localLocationSettingsStates = (LocationSettingsStates)ᴭ.ˊ(paramParcel, k, LocationSettingsStates.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationSettingsResult(i, localStatus, localLocationSettingsStates);
  }
  
  public LocationSettingsResult[] ﹿ(int paramInt)
  {
    return new LocationSettingsResult[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bb
 * JD-Core Version:    0.7.0.1
 */