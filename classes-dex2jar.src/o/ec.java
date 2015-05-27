package o;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public class ec
  implements Parcelable.Creator<GroundOverlayOptions>
{
  public static void ˊ(GroundOverlayOptions paramGroundOverlayOptions, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramGroundOverlayOptions.ถ());
    ṯ.ˊ(paramParcel, 2, paramGroundOverlayOptions.へ(), false);
    ṯ.ˊ(paramParcel, 3, paramGroundOverlayOptions.ゥ(), paramInt, false);
    ṯ.ˊ(paramParcel, 4, paramGroundOverlayOptions.getWidth());
    ṯ.ˊ(paramParcel, 5, paramGroundOverlayOptions.getHeight());
    ṯ.ˊ(paramParcel, 6, paramGroundOverlayOptions.ト(), paramInt, false);
    ṯ.ˊ(paramParcel, 7, paramGroundOverlayOptions.getBearing());
    ṯ.ˊ(paramParcel, 8, paramGroundOverlayOptions.っ());
    ṯ.ˊ(paramParcel, 9, paramGroundOverlayOptions.isVisible());
    ṯ.ˊ(paramParcel, 10, paramGroundOverlayOptions.リ());
    ṯ.ˊ(paramParcel, 11, paramGroundOverlayOptions.ヮ());
    ṯ.ˊ(paramParcel, 12, paramGroundOverlayOptions.ヶ());
    ṯ.ـ(paramParcel, i);
  }
  
  public GroundOverlayOptions[] ڍ(int paramInt)
  {
    return new GroundOverlayOptions[paramInt];
  }
  
  public GroundOverlayOptions ᕀ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    IBinder localIBinder = null;
    LatLng localLatLng = null;
    float f7 = 0.0F;
    float f6 = 0.0F;
    LatLngBounds localLatLngBounds = null;
    float f5 = 0.0F;
    float f4 = 0.0F;
    boolean bool = false;
    float f3 = 0.0F;
    float f2 = 0.0F;
    float f1 = 0.0F;
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
        localIBinder = ᴭ.ʿ(paramParcel, k);
        break;
      case 3: 
        localLatLng = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 4: 
        f7 = ᴭ.ͺ(paramParcel, k);
        break;
      case 5: 
        f6 = ᴭ.ͺ(paramParcel, k);
        break;
      case 6: 
        localLatLngBounds = (LatLngBounds)ᴭ.ˊ(paramParcel, k, LatLngBounds.CREATOR);
        break;
      case 7: 
        f5 = ᴭ.ͺ(paramParcel, k);
        break;
      case 8: 
        f4 = ᴭ.ͺ(paramParcel, k);
        break;
      case 9: 
        bool = ᴭ.ˎ(paramParcel, k);
        break;
      case 10: 
        f3 = ᴭ.ͺ(paramParcel, k);
        break;
      case 11: 
        f2 = ᴭ.ͺ(paramParcel, k);
        break;
      case 12: 
        f1 = ᴭ.ͺ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new GroundOverlayOptions(i, localIBinder, localLatLng, f7, f6, localLatLngBounds, f5, f4, bool, f3, f2, f1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ec
 * JD-Core Version:    0.7.0.1
 */