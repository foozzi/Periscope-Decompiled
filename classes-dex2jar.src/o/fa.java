package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public class fa
  implements Parcelable.Creator<StreetViewPanoramaOptions>
{
  public static void ˊ(StreetViewPanoramaOptions paramStreetViewPanoramaOptions, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramStreetViewPanoramaOptions.ถ());
    ṯ.ˊ(paramParcel, 2, paramStreetViewPanoramaOptions.ۉ(), paramInt, false);
    ṯ.ˊ(paramParcel, 3, paramStreetViewPanoramaOptions.ܟ(), false);
    ṯ.ˊ(paramParcel, 4, paramStreetViewPanoramaOptions.ے(), paramInt, false);
    ṯ.ˊ(paramParcel, 5, paramStreetViewPanoramaOptions.ܘ(), false);
    ṯ.ˊ(paramParcel, 6, paramStreetViewPanoramaOptions.پ());
    ṯ.ˊ(paramParcel, 7, paramStreetViewPanoramaOptions.յ());
    ṯ.ˊ(paramParcel, 8, paramStreetViewPanoramaOptions.ڑ());
    ṯ.ˊ(paramParcel, 9, paramStreetViewPanoramaOptions.ۅ());
    ṯ.ˊ(paramParcel, 10, paramStreetViewPanoramaOptions.ӟ());
    ṯ.ـ(paramParcel, i);
  }
  
  public StreetViewPanoramaOptions[] ᴴ(int paramInt)
  {
    return new StreetViewPanoramaOptions[paramInt];
  }
  
  public StreetViewPanoramaOptions ᵀ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    StreetViewPanoramaCamera localStreetViewPanoramaCamera = null;
    String str = null;
    LatLng localLatLng = null;
    Integer localInteger = null;
    byte b5 = 0;
    byte b4 = 0;
    byte b3 = 0;
    byte b2 = 0;
    byte b1 = 0;
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
        localStreetViewPanoramaCamera = (StreetViewPanoramaCamera)ᴭ.ˊ(paramParcel, k, StreetViewPanoramaCamera.CREATOR);
        break;
      case 3: 
        str = ᴭ.ʾ(paramParcel, k);
        break;
      case 4: 
        localLatLng = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 5: 
        localInteger = ᴭ.ʼ(paramParcel, k);
        break;
      case 6: 
        b5 = ᴭ.ˏ(paramParcel, k);
        break;
      case 7: 
        b4 = ᴭ.ˏ(paramParcel, k);
        break;
      case 8: 
        b3 = ᴭ.ˏ(paramParcel, k);
        break;
      case 9: 
        b2 = ᴭ.ˏ(paramParcel, k);
        break;
      case 10: 
        b1 = ᴭ.ˏ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaOptions(i, localStreetViewPanoramaCamera, str, localLatLng, localInteger, b5, b4, b3, b2, b1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fa
 * JD-Core Version:    0.7.0.1
 */