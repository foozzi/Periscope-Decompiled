package o;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzae;

public class ℷ
  implements Parcelable.Creator<zzae>
{
  public static void ˊ(zzae paramzzae, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzae.BH);
    ṯ.ˎ(paramParcel, 2, paramzzae.ᓙ());
    ṯ.ˊ(paramParcel, 3, paramzzae.DF, false);
    ṯ.ˊ(paramParcel, 4, paramzzae.ᔬ(), paramInt, false);
    ṯ.ˊ(paramParcel, 5, paramzzae.ᖧ(), false);
    ṯ.ˊ(paramParcel, 6, paramzzae.getCallingPackage(), false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zzae ـ(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    int i = 0;
    IBinder localIBinder = null;
    Scope[] arrayOfScope = null;
    Bundle localBundle = null;
    String str = null;
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
        localIBinder = ᴭ.ʿ(paramParcel, m);
        break;
      case 4: 
        arrayOfScope = (Scope[])ᴭ.ˋ(paramParcel, m, Scope.CREATOR);
        break;
      case 5: 
        localBundle = ᴭ.ˈ(paramParcel, m);
        break;
      case 6: 
        str = ᴭ.ʾ(paramParcel, m);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new zzae(j, i, localIBinder, arrayOfScope, localBundle, str);
  }
  
  public zzae[] ᴲ(int paramInt)
  {
    return new zzae[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â·
 * JD-Core Version:    0.7.0.1
 */