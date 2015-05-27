package o;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzc;

public class Ⅱ
  implements Parcelable.Creator<zzc>
{
  public static void ˊ(zzc paramzzc, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzc.BH);
    ṯ.ˊ(paramParcel, 2, paramzzc.DF, false);
    ṯ.ˊ(paramParcel, 3, paramzzc.DI, paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zzc ᐧ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    IBinder localIBinder = null;
    Scope[] arrayOfScope = null;
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
        arrayOfScope = (Scope[])ᴭ.ˋ(paramParcel, k, Scope.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zzc(i, localIBinder, arrayOfScope);
  }
  
  public zzc[] ᴾ(int paramInt)
  {
    return new zzc[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â¡
 * JD-Core Version:    0.7.0.1
 */