package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;

public class ep
  implements Parcelable.Creator<StreetViewPanoramaLink>
{
  public static void ˊ(StreetViewPanoramaLink paramStreetViewPanoramaLink, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramStreetViewPanoramaLink.ถ());
    ṯ.ˊ(paramParcel, 2, paramStreetViewPanoramaLink.Jt, false);
    ṯ.ˊ(paramParcel, 3, paramStreetViewPanoramaLink.II);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaLink ᐪ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    String str = null;
    float f = 0.0F;
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
        str = ᴭ.ʾ(paramParcel, k);
        break;
      case 3: 
        f = ᴭ.ͺ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaLink(i, str, f);
  }
  
  public StreetViewPanoramaLink[] ᓭ(int paramInt)
  {
    return new StreetViewPanoramaLink[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ep
 * JD-Core Version:    0.7.0.1
 */