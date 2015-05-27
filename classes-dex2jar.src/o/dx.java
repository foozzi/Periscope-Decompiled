package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.internal.zza;
import com.google.android.gms.maps.model.internal.zzp;

public class dx
  implements Parcelable.Creator<zzp>
{
  public static void ˊ(zzp paramzzp, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzp.ถ());
    ṯ.ˊ(paramParcel, 2, paramzzp.e(), paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zzp[] ד(int paramInt)
  {
    return new zzp[paramInt];
  }
  
  public zzp ᐣ(Parcel paramParcel)
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
    return new zzp(i, localzza);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.dx
 * JD-Core Version:    0.7.0.1
 */