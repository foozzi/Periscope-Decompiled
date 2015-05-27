package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import java.util.ArrayList;

public class bj
  implements Parcelable.Creator<LocationSettingsRequest>
{
  public static void ˊ(LocationSettingsRequest paramLocationSettingsRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˋ(paramParcel, 1, paramLocationSettingsRequest.ʜ(), false);
    ṯ.ˎ(paramParcel, 1000, paramLocationSettingsRequest.ถ());
    ṯ.ˊ(paramParcel, 2, paramLocationSettingsRequest.Ύ());
    ṯ.ˊ(paramParcel, 3, paramLocationSettingsRequest.Κ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public LocationSettingsRequest[] ĭ(int paramInt)
  {
    return new LocationSettingsRequest[paramInt];
  }
  
  public LocationSettingsRequest ʴ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    ArrayList localArrayList = null;
    boolean bool2 = false;
    boolean bool1 = false;
    while (paramParcel.dataPosition() < j)
    {
      int k = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(k))
      {
      default: 
        break;
      case 1: 
        localArrayList = ᴭ.ˎ(paramParcel, k, LocationRequest.CREATOR);
        break;
      case 1000: 
        i = ᴭ.ʻ(paramParcel, k);
        break;
      case 2: 
        bool2 = ᴭ.ˎ(paramParcel, k);
        break;
      case 3: 
        bool1 = ᴭ.ˎ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationSettingsRequest(i, localArrayList, bool2, bool1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bj
 * JD-Core Version:    0.7.0.1
 */