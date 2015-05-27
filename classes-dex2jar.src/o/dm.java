package o;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.internal.zza;

public class dm
  implements Parcelable.Creator<zza>
{
  public static void ˊ(zza paramzza, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzza.ถ());
    ṯ.ˊ(paramParcel, 2, paramzza.ﱟ());
    ṯ.ˊ(paramParcel, 3, paramzza.ﱡ(), false);
    ṯ.ˊ(paramParcel, 4, paramzza.getBitmap(), paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zza[] ƚ(int paramInt)
  {
    return new zza[paramInt];
  }
  
  public zza ˮ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    byte b = 0;
    Bundle localBundle = null;
    Bitmap localBitmap = null;
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
        b = ᴭ.ˏ(paramParcel, k);
        break;
      case 3: 
        localBundle = ᴭ.ˈ(paramParcel, k);
        break;
      case 4: 
        localBitmap = (Bitmap)ᴭ.ˊ(paramParcel, k, Bitmap.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zza(i, b, localBundle, localBitmap);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.dm
 * JD-Core Version:    0.7.0.1
 */