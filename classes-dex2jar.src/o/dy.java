package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;

public class dy
  implements Parcelable.Creator<CameraPosition>
{
  public static void ˊ(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramCameraPosition.ถ());
    ṯ.ˊ(paramParcel, 2, paramCameraPosition.IF, paramInt, false);
    ṯ.ˊ(paramParcel, 3, paramCameraPosition.IG);
    ṯ.ˊ(paramParcel, 4, paramCameraPosition.IH);
    ṯ.ˊ(paramParcel, 5, paramCameraPosition.II);
    ṯ.ـ(paramParcel, i);
  }
  
  public CameraPosition[] ױ(int paramInt)
  {
    return new CameraPosition[paramInt];
  }
  
  public CameraPosition ᐩ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    LatLng localLatLng = null;
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
        localLatLng = (LatLng)ᴭ.ˊ(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        f3 = ᴭ.ͺ(paramParcel, k);
        break;
      case 4: 
        f2 = ᴭ.ͺ(paramParcel, k);
        break;
      case 5: 
        f1 = ᴭ.ͺ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new CameraPosition(i, localLatLng, f3, f2, f1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.dy
 * JD-Core Version:    0.7.0.1
 */