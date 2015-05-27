package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public class er
  implements Parcelable.Creator<StreetViewPanoramaOrientation>
{
  public static void ˊ(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramStreetViewPanoramaOrientation.ถ());
    ṯ.ˊ(paramParcel, 2, paramStreetViewPanoramaOrientation.IH);
    ṯ.ˊ(paramParcel, 3, paramStreetViewPanoramaOrientation.II);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaOrientation[] ᓱ(int paramInt)
  {
    return new StreetViewPanoramaOrientation[paramInt];
  }
  
  public StreetViewPanoramaOrientation ᔇ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
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
        f2 = ᴭ.ͺ(paramParcel, k);
        break;
      case 3: 
        f1 = ᴭ.ͺ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaOrientation(i, f2, f1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.er
 * JD-Core Version:    0.7.0.1
 */