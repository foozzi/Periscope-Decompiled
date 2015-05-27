package o;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.internal.zzy;

public class de
  implements Parcelable.Creator<zzy>
{
  public static void ˊ(zzy paramzzy, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzy.ถ());
    ṯ.ˊ(paramParcel, 2, paramzzy.Ῠ(), paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zzy[] ſ(int paramInt)
  {
    return new zzy[paramInt];
  }
  
  public zzy ˡ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    Point localPoint = null;
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
        localPoint = (Point)ᴭ.ˊ(paramParcel, k, Point.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zzy(i, localPoint);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.de
 * JD-Core Version:    0.7.0.1
 */