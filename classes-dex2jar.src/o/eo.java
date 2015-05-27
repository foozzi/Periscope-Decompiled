package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public class eo
  implements Parcelable.Creator<StreetViewPanoramaCamera>
{
  public static void ˊ(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramStreetViewPanoramaCamera.ถ());
    ṯ.ˊ(paramParcel, 2, paramStreetViewPanoramaCamera.IG);
    ṯ.ˊ(paramParcel, 3, paramStreetViewPanoramaCamera.IH);
    ṯ.ˊ(paramParcel, 4, paramStreetViewPanoramaCamera.II);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaCamera ᐡ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
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
        f3 = ᴭ.ͺ(paramParcel, k);
        break;
      case 3: 
        f2 = ᴭ.ͺ(paramParcel, k);
        break;
      case 4: 
        f1 = ᴭ.ͺ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaCamera(i, f3, f2, f1);
  }
  
  public StreetViewPanoramaCamera[] ᓐ(int paramInt)
  {
    return new StreetViewPanoramaCamera[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.eo
 * JD-Core Version:    0.7.0.1
 */