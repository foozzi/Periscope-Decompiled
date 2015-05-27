package o;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzaa;

public class ọ
  implements Parcelable.Creator<zzaa>
{
  public static void ˊ(zzaa paramzzaa, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzaa.BH);
    ṯ.ˊ(paramParcel, 2, paramzzaa.DF, false);
    ṯ.ˊ(paramParcel, 3, paramzzaa.ᒵ(), paramInt, false);
    ṯ.ˊ(paramParcel, 4, paramzzaa.ᒸ());
    ṯ.ˊ(paramParcel, 5, paramzzaa.ᒹ());
    ṯ.ـ(paramParcel, i);
  }
  
  public zzaa ˑ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    IBinder localIBinder = null;
    ConnectionResult localConnectionResult = null;
    boolean bool2 = false;
    boolean bool1 = false;
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
        localConnectionResult = (ConnectionResult)ᴭ.ˊ(paramParcel, k, ConnectionResult.CREATOR);
        break;
      case 4: 
        bool2 = ᴭ.ˎ(paramParcel, k);
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
    return new zzaa(i, localIBinder, localConnectionResult, bool2, bool1);
  }
  
  public zzaa[] ᴱ(int paramInt)
  {
    return new zzaa[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»
 * JD-Core Version:    0.7.0.1
 */