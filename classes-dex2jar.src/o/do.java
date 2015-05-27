package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.internal.zza;
import com.google.android.gms.maps.model.internal.zze;

public class do
  implements Parcelable.Creator<zze>
{
  public static void ˊ(zze paramzze, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzze.ถ());
    ṯ.ˊ(paramParcel, 2, paramzze.ﺙ(), paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zze[] ǐ(int paramInt)
  {
    return new zze[paramInt];
  }
  
  public zze ᐠ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    zza localzza = null;
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
        localzza = (zza)ᴭ.ˊ(paramParcel, k, zza.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zze(i, localzza);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.do
 * JD-Core Version:    0.7.0.1
 */