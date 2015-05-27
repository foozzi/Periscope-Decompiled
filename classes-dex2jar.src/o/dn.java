package o;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.internal.zzc;

public class dn
  implements Parcelable.Creator<zzc>
{
  public static void ˊ(zzc paramzzc, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzc.ถ());
    ṯ.ˎ(paramParcel, 2, paramzzc.getType());
    ṯ.ˊ(paramParcel, 3, paramzzc.ﱡ(), false);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzc[] Ǐ(int paramInt)
  {
    return new zzc[paramInt];
  }
  
  public zzc ۥ(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    int i = 0;
    Bundle localBundle = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(m))
      {
      default: 
        break;
      case 1: 
        j = ᴭ.ʻ(paramParcel, m);
        break;
      case 2: 
        i = ᴭ.ʻ(paramParcel, m);
        break;
      case 3: 
        localBundle = ᴭ.ˈ(paramParcel, m);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new zzc(j, i, localBundle);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.dn
 * JD-Core Version:    0.7.0.1
 */