package o;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public class ei
  implements Parcelable.Creator<MarkerOptions>
{
  public static void ˊ(MarkerOptions paramMarkerOptions, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramMarkerOptions.ถ());
    ṯ.ˊ(paramParcel, 2, paramMarkerOptions.ے(), paramInt, false);
    ṯ.ˊ(paramParcel, 3, paramMarkerOptions.getTitle(), false);
    ṯ.ˊ(paramParcel, 4, paramMarkerOptions.乁(), false);
    ṯ.ˊ(paramParcel, 5, paramMarkerOptions.丫(), false);
    ṯ.ˊ(paramParcel, 6, paramMarkerOptions.ヮ());
    ṯ.ˊ(paramParcel, 7, paramMarkerOptions.ヶ());
    ṯ.ˊ(paramParcel, 8, paramMarkerOptions.爫());
    ṯ.ˊ(paramParcel, 9, paramMarkerOptions.isVisible());
    ṯ.ˊ(paramParcel, 10, paramMarkerOptions.ﬤ());
    ṯ.ˊ(paramParcel, 11, paramMarkerOptions.getRotation());
    ṯ.ˊ(paramParcel, 12, paramMarkerOptions.טּ());
    ṯ.ˊ(paramParcel, 13, paramMarkerOptions.סּ());
    ṯ.ˊ(paramParcel, 14, paramMarkerOptions.getAlpha());
    ṯ.ـ(paramParcel, i);
  }
  
  public MarkerOptions[] ฯ(int paramInt)
  {
    return new MarkerOptions[paramInt];
  }
  
  public MarkerOptions יִ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    LatLng localLatLng = null;
    String str2 = null;
    String str1 = null;
    IBinder localIBinder = null;
    float f6 = 0.0F;
    float f5 = 0.0F;
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool1 = false;
    float f4 = 0.0F;
    float f3 = 0.5F;
    float f2 = 0.0F;
    float f1 = 1.0F;
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
        localLatLng = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        str2 = ᴭ.ʾ(paramParcel, k);
        break;
      case 4: 
        str1 = ᴭ.ʾ(paramParcel, k);
        break;
      case 5: 
        localIBinder = ᴭ.ʿ(paramParcel, k);
        break;
      case 6: 
        f6 = ᴭ.ͺ(paramParcel, k);
        break;
      case 7: 
        f5 = ᴭ.ͺ(paramParcel, k);
        break;
      case 8: 
        bool3 = ᴭ.ˎ(paramParcel, k);
        break;
      case 9: 
        bool2 = ᴭ.ˎ(paramParcel, k);
        break;
      case 10: 
        bool1 = ᴭ.ˎ(paramParcel, k);
        break;
      case 11: 
        f4 = ᴭ.ͺ(paramParcel, k);
        break;
      case 12: 
        f3 = ᴭ.ͺ(paramParcel, k);
        break;
      case 13: 
        f2 = ᴭ.ͺ(paramParcel, k);
        break;
      case 14: 
        f1 = ᴭ.ͺ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new MarkerOptions(i, localLatLng, str2, str1, localIBinder, f6, f5, bool3, bool2, bool1, f4, f3, f2, f1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ei
 * JD-Core Version:    0.7.0.1
 */