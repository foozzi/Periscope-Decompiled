package o;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.zzpg;
import com.google.android.gms.internal.zzpi;

public class z
  implements Parcelable.Creator<zzpi>
{
  public static void ˊ(zzpi paramzzpi, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzpi.Gr);
    ṯ.ˎ(paramParcel, 1000, paramzzpi.ถ());
    ṯ.ˊ(paramParcel, 2, paramzzpi.Gs, paramInt, false);
    ṯ.ˊ(paramParcel, 3, paramzzpi.ｓ(), false);
    ṯ.ˊ(paramParcel, 4, paramzzpi.BJ, paramInt, false);
    ṯ.ˊ(paramParcel, 5, paramzzpi.ｦ(), false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zzpi י(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    int i = 1;
    zzpg localzzpg = null;
    IBinder localIBinder2 = null;
    PendingIntent localPendingIntent = null;
    IBinder localIBinder1 = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(m))
      {
      default: 
        break;
      case 1: 
        i = ᴭ.ʻ(paramParcel, m);
        break;
      case 1000: 
        j = ᴭ.ʻ(paramParcel, m);
        break;
      case 2: 
        localzzpg = (zzpg)ᴭ.ˊ(paramParcel, m, zzpg.CREATOR);
        break;
      case 3: 
        localIBinder2 = ᴭ.ʿ(paramParcel, m);
        break;
      case 4: 
        localPendingIntent = (PendingIntent)ᴭ.ˊ(paramParcel, m, PendingIntent.CREATOR);
        break;
      case 5: 
        localIBinder1 = ᴭ.ʿ(paramParcel, m);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new zzpi(j, i, localzzpg, localIBinder2, localPendingIntent, localIBinder1);
  }
  
  public zzpi[] ヽ(int paramInt)
  {
    return new zzpi[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.z
 * JD-Core Version:    0.7.0.1
 */