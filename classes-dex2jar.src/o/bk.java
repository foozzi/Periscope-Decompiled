package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.LocationSettingsStates;

public class bk
  implements Parcelable.Creator<LocationSettingsStates>
{
  public static void ˊ(LocationSettingsStates paramLocationSettingsStates, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˊ(paramParcel, 1, paramLocationSettingsStates.ϝ());
    ṯ.ˎ(paramParcel, 1000, paramLocationSettingsStates.ถ());
    ṯ.ˊ(paramParcel, 2, paramLocationSettingsStates.ϯ());
    ṯ.ˊ(paramParcel, 3, paramLocationSettingsStates.Ϲ());
    ṯ.ˊ(paramParcel, 4, paramLocationSettingsStates.Ϯ());
    ṯ.ˊ(paramParcel, 5, paramLocationSettingsStates.ϵ());
    ṯ.ˊ(paramParcel, 6, paramLocationSettingsStates.С());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public LocationSettingsStates[] ĺ(int paramInt)
  {
    return new LocationSettingsStates[paramInt];
  }
  
  public LocationSettingsStates ˆ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    boolean bool6 = false;
    boolean bool5 = false;
    boolean bool4 = false;
    boolean bool3 = false;
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
        bool6 = ᴭ.ˎ(paramParcel, k);
        break;
      case 1000: 
        i = ᴭ.ʻ(paramParcel, k);
        break;
      case 2: 
        bool5 = ᴭ.ˎ(paramParcel, k);
        break;
      case 3: 
        bool4 = ᴭ.ˎ(paramParcel, k);
        break;
      case 4: 
        bool3 = ᴭ.ˎ(paramParcel, k);
        break;
      case 5: 
        bool2 = ᴭ.ˎ(paramParcel, k);
        break;
      case 6: 
        bool1 = ᴭ.ˎ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationSettingsStates(i, bool6, bool5, bool4, bool3, bool2, bool1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bk
 * JD-Core Version:    0.7.0.1
 */