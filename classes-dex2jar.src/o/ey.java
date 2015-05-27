package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;

public class ey
  implements Parcelable.Creator<GoogleMapOptions>
{
  public static void ˊ(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramGoogleMapOptions.ถ());
    ṯ.ˊ(paramParcel, 2, paramGoogleMapOptions.Ҭ());
    ṯ.ˊ(paramParcel, 3, paramGoogleMapOptions.ӟ());
    ṯ.ˎ(paramParcel, 4, paramGoogleMapOptions.ת());
    ṯ.ˊ(paramParcel, 5, paramGoogleMapOptions.ث(), paramInt, false);
    ṯ.ˊ(paramParcel, 6, paramGoogleMapOptions.Ӵ());
    ṯ.ˊ(paramParcel, 7, paramGoogleMapOptions.Ԇ());
    ṯ.ˊ(paramParcel, 8, paramGoogleMapOptions.Ն());
    ṯ.ˊ(paramParcel, 9, paramGoogleMapOptions.յ());
    ṯ.ˊ(paramParcel, 10, paramGoogleMapOptions.ո());
    ṯ.ˊ(paramParcel, 11, paramGoogleMapOptions.ս());
    ṯ.ˊ(paramParcel, 12, paramGoogleMapOptions.פ());
    ṯ.ˊ(paramParcel, 14, paramGoogleMapOptions.ק());
    ṯ.ـ(paramParcel, i);
  }
  
  public GoogleMapOptions[] ᴗ(int paramInt)
  {
    return new GoogleMapOptions[paramInt];
  }
  
  public GoogleMapOptions ᴸ(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    byte b10 = 0;
    byte b9 = 0;
    int i = 0;
    CameraPosition localCameraPosition = null;
    byte b8 = 0;
    byte b7 = 0;
    byte b6 = 0;
    byte b5 = 0;
    byte b4 = 0;
    byte b3 = 0;
    byte b2 = 0;
    byte b1 = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(m))
      {
      default: 
        break;
      case 1: 
        j = ᴭ.ʻ(paramParcel, m);
        break;
      case 2: 
        b10 = ᴭ.ˏ(paramParcel, m);
        break;
      case 3: 
        b9 = ᴭ.ˏ(paramParcel, m);
        break;
      case 4: 
        i = ᴭ.ʻ(paramParcel, m);
        break;
      case 5: 
        localCameraPosition = (CameraPosition)ᴭ.ˊ(paramParcel, m, CameraPosition.CREATOR);
        break;
      case 6: 
        b8 = ᴭ.ˏ(paramParcel, m);
        break;
      case 7: 
        b7 = ᴭ.ˏ(paramParcel, m);
        break;
      case 8: 
        b6 = ᴭ.ˏ(paramParcel, m);
        break;
      case 9: 
        b5 = ᴭ.ˏ(paramParcel, m);
        break;
      case 10: 
        b4 = ᴭ.ˏ(paramParcel, m);
        break;
      case 11: 
        b3 = ᴭ.ˏ(paramParcel, m);
        break;
      case 12: 
        b2 = ᴭ.ˏ(paramParcel, m);
        break;
      case 14: 
        b1 = ᴭ.ˏ(paramParcel, m);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new GoogleMapOptions(j, b10, b9, i, localCameraPosition, b8, b7, b6, b5, b4, b3, b2, b1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ey
 * JD-Core Version:    0.7.0.1
 */