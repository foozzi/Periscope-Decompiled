package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PolylineOptions;
import java.util.ArrayList;

public class em
  implements Parcelable.Creator<PolylineOptions>
{
  public static void ˊ(PolylineOptions paramPolylineOptions, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramPolylineOptions.ถ());
    ṯ.ˋ(paramParcel, 2, paramPolylineOptions.ﭖ(), false);
    ṯ.ˊ(paramParcel, 3, paramPolylineOptions.getWidth());
    ṯ.ˎ(paramParcel, 4, paramPolylineOptions.getColor());
    ṯ.ˊ(paramParcel, 5, paramPolylineOptions.っ());
    ṯ.ˊ(paramParcel, 6, paramPolylineOptions.isVisible());
    ṯ.ˊ(paramParcel, 7, paramPolylineOptions.ﭴ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public PolylineOptions[] ᐞ(int paramInt)
  {
    return new PolylineOptions[paramInt];
  }
  
  public PolylineOptions ᐟ(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    ArrayList localArrayList = null;
    float f2 = 0.0F;
    int i = 0;
    float f1 = 0.0F;
    boolean bool2 = false;
    boolean bool1 = false;
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
        localArrayList = ᴭ.ˎ(paramParcel, m, LatLng.CREATOR);
        break;
      case 3: 
        f2 = ᴭ.ͺ(paramParcel, m);
        break;
      case 4: 
        i = ᴭ.ʻ(paramParcel, m);
        break;
      case 5: 
        f1 = ᴭ.ͺ(paramParcel, m);
        break;
      case 6: 
        bool2 = ᴭ.ˎ(paramParcel, m);
        break;
      case 7: 
        bool1 = ᴭ.ˎ(paramParcel, m);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new PolylineOptions(j, localArrayList, f2, i, f1, bool2, bool1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.em
 * JD-Core Version:    0.7.0.1
 */