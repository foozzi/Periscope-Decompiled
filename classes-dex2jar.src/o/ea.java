package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;

public class ea
  implements Parcelable.Creator<CircleOptions>
{
  public static void ˊ(CircleOptions paramCircleOptions, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramCircleOptions.ถ());
    ṯ.ˊ(paramParcel, 2, paramCircleOptions.K(), paramInt, false);
    ṯ.ˊ(paramParcel, 3, paramCircleOptions.Ⅽ());
    ṯ.ˊ(paramParcel, 4, paramCircleOptions.getStrokeWidth());
    ṯ.ˎ(paramParcel, 5, paramCircleOptions.Ↄ());
    ṯ.ˎ(paramParcel, 6, paramCircleOptions.く());
    ṯ.ˊ(paramParcel, 7, paramCircleOptions.っ());
    ṯ.ˊ(paramParcel, 8, paramCircleOptions.isVisible());
    ṯ.ـ(paramParcel, i);
  }
  
  public CircleOptions[] ڌ(int paramInt)
  {
    return new CircleOptions[paramInt];
  }
  
  public CircleOptions ᑊ(Parcel paramParcel)
  {
    int m = ᴭ.ˌ(paramParcel);
    int k = 0;
    LatLng localLatLng = null;
    double d = 0.0D;
    float f2 = 0.0F;
    int j = 0;
    int i = 0;
    float f1 = 0.0F;
    boolean bool = false;
    while (paramParcel.dataPosition() < m)
    {
      int n = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(n))
      {
      default: 
        break;
      case 1: 
        k = ᴭ.ʻ(paramParcel, n);
        break;
      case 2: 
        localLatLng = (LatLng)ᴭ.ˊ(paramParcel, n, LatLng.CREATOR);
        break;
      case 3: 
        d = ᴭ.ι(paramParcel, n);
        break;
      case 4: 
        f2 = ᴭ.ͺ(paramParcel, n);
        break;
      case 5: 
        j = ᴭ.ʻ(paramParcel, n);
        break;
      case 6: 
        i = ᴭ.ʻ(paramParcel, n);
        break;
      case 7: 
        f1 = ᴭ.ͺ(paramParcel, n);
        break;
      case 8: 
        bool = ᴭ.ˎ(paramParcel, n);
        break;
      }
      ᴭ.ˋ(paramParcel, n);
    }
    if (paramParcel.dataPosition() != m) {
      throw new ᴭ.if("Overread allowed size end=" + m, paramParcel);
    }
    return new CircleOptions(k, localLatLng, d, f2, j, i, f1, bool);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ea
 * JD-Core Version:    0.7.0.1
 */