package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public class ee
  implements Parcelable.Creator<LatLngBounds>
{
  public static void ˊ(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramLatLngBounds.ถ());
    ṯ.ˊ(paramParcel, 2, paramLatLngBounds.Je, paramInt, false);
    ṯ.ˊ(paramParcel, 3, paramLatLngBounds.Jf, paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public LatLngBounds[] ۃ(int paramInt)
  {
    return new LatLngBounds[paramInt];
  }
  
  public LatLngBounds ᵕ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    LatLng localLatLng2 = null;
    LatLng localLatLng1 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(k))
      {
      default: 
        break;
      case 1: 
        i = ᴭ.ʻ(paramParcel, k);
        break;
      case 2: 
        localLatLng2 = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        localLatLng1 = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLngBounds(i, localLatLng2, localLatLng1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ee
 * JD-Core Version:    0.7.0.1
 */