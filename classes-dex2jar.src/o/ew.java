package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.VisibleRegion;

public class ew
  implements Parcelable.Creator<VisibleRegion>
{
  public static void ˊ(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramVisibleRegion.ถ());
    ṯ.ˊ(paramParcel, 2, paramVisibleRegion.JC, paramInt, false);
    ṯ.ˊ(paramParcel, 3, paramVisibleRegion.JD, paramInt, false);
    ṯ.ˊ(paramParcel, 4, paramVisibleRegion.JE, paramInt, false);
    ṯ.ˊ(paramParcel, 5, paramVisibleRegion.JF, paramInt, false);
    ṯ.ˊ(paramParcel, 6, paramVisibleRegion.JG, paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public VisibleRegion[] ᖦ(int paramInt)
  {
    return new VisibleRegion[paramInt];
  }
  
  public VisibleRegion ᴶ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    LatLng localLatLng4 = null;
    LatLng localLatLng3 = null;
    LatLng localLatLng2 = null;
    LatLng localLatLng1 = null;
    LatLngBounds localLatLngBounds = null;
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
        localLatLng4 = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        localLatLng3 = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 4: 
        localLatLng2 = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 5: 
        localLatLng1 = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 6: 
        localLatLngBounds = (LatLngBounds)ᴭ.ˊ(paramParcel, k, LatLngBounds.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new VisibleRegion(i, localLatLng4, localLatLng3, localLatLng2, localLatLng1, localLatLngBounds);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ew
 * JD-Core Version:    0.7.0.1
 */