package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;

public class eg
  implements Parcelable.Creator<LatLng>
{
  public static void ˊ(LatLng paramLatLng, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramLatLng.ถ());
    ṯ.ˊ(paramParcel, 2, paramLatLng.Jc);
    ṯ.ˊ(paramParcel, 3, paramLatLng.Jd);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public LatLng[] ৳(int paramInt)
  {
    return new LatLng[paramInt];
  }
  
  public LatLng ᵣ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    double d2 = 0.0D;
    double d1 = 0.0D;
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
        d2 = ᴭ.ι(paramParcel, k);
        break;
      case 3: 
        d1 = ᴭ.ι(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLng(i, d2, d1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.eg
 * JD-Core Version:    0.7.0.1
 */