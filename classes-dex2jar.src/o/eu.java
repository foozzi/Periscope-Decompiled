package o;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.TileOverlayOptions;

public class eu
  implements Parcelable.Creator<TileOverlayOptions>
{
  public static void ˊ(TileOverlayOptions paramTileOverlayOptions, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramTileOverlayOptions.ถ());
    ṯ.ˊ(paramParcel, 2, paramTileOverlayOptions.ﮉ(), false);
    ṯ.ˊ(paramParcel, 3, paramTileOverlayOptions.isVisible());
    ṯ.ˊ(paramParcel, 4, paramTileOverlayOptions.っ());
    ṯ.ˊ(paramParcel, 5, paramTileOverlayOptions.ﮌ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public TileOverlayOptions[] ᔥ(int paramInt)
  {
    return new TileOverlayOptions[paramInt];
  }
  
  public TileOverlayOptions ᗮ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    IBinder localIBinder = null;
    boolean bool2 = false;
    float f = 0.0F;
    boolean bool1 = true;
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
        localIBinder = ᴭ.ʿ(paramParcel, k);
        break;
      case 3: 
        bool2 = ᴭ.ˎ(paramParcel, k);
        break;
      case 4: 
        f = ᴭ.ͺ(paramParcel, k);
        break;
      case 5: 
        bool1 = ᴭ.ˎ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new TileOverlayOptions(i, localIBinder, bool2, f, bool1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.eu
 * JD-Core Version:    0.7.0.1
 */