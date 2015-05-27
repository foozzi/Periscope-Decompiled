package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;

public class eq
  implements Parcelable.Creator<StreetViewPanoramaLocation>
{
  public static void ˊ(StreetViewPanoramaLocation paramStreetViewPanoramaLocation, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramStreetViewPanoramaLocation.ถ());
    ṯ.ˊ(paramParcel, 2, paramStreetViewPanoramaLocation.Ju, paramInt, false);
    ṯ.ˊ(paramParcel, 3, paramStreetViewPanoramaLocation.Jv, paramInt, false);
    ṯ.ˊ(paramParcel, 4, paramStreetViewPanoramaLocation.Jt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public StreetViewPanoramaLocation ᒽ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink = null;
    LatLng localLatLng = null;
    String str = null;
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
        arrayOfStreetViewPanoramaLink = (StreetViewPanoramaLink[])ᴭ.ˋ(paramParcel, k, StreetViewPanoramaLink.CREATOR);
        break;
      case 3: 
        localLatLng = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 4: 
        str = ᴭ.ʾ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaLocation(i, arrayOfStreetViewPanoramaLink, localLatLng, str);
  }
  
  public StreetViewPanoramaLocation[] ᓯ(int paramInt)
  {
    return new StreetViewPanoramaLocation[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.eq
 * JD-Core Version:    0.7.0.1
 */