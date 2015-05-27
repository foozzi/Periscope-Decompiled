package o;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzi;

public class ッ
  implements Parcelable.Creator<zzi>
{
  public static void ˊ(zzi paramzzi, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzi.version);
    ṯ.ˎ(paramParcel, 2, paramzzi.DR);
    ṯ.ˎ(paramParcel, 3, paramzzi.DS);
    ṯ.ˊ(paramParcel, 4, paramzzi.DT, false);
    ṯ.ˊ(paramParcel, 5, paramzzi.DU, false);
    ṯ.ˊ(paramParcel, 6, paramzzi.DV, paramInt, false);
    ṯ.ˊ(paramParcel, 7, paramzzi.DW, false);
    ṯ.ˊ(paramParcel, 8, paramzzi.DX, paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zzi ᐨ(Parcel paramParcel)
  {
    int m = ᴭ.ˌ(paramParcel);
    int k = 0;
    int j = 0;
    int i = 0;
    String str = null;
    IBinder localIBinder = null;
    Scope[] arrayOfScope = null;
    Bundle localBundle = null;
    Account localAccount = null;
    while (paramParcel.dataPosition() < m)
    {
      int n = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(n))
      {
      default: 
        break;
      case 1: 
        k = ᴭ.ʻ(paramParcel, n);
        break;
      case 2: 
        j = ᴭ.ʻ(paramParcel, n);
        break;
      case 3: 
        i = ᴭ.ʻ(paramParcel, n);
        break;
      case 4: 
        str = ᴭ.ʾ(paramParcel, n);
        break;
      case 5: 
        localIBinder = ᴭ.ʿ(paramParcel, n);
        break;
      case 6: 
        arrayOfScope = (Scope[])ᴭ.ˋ(paramParcel, n, Scope.CREATOR);
        break;
      case 7: 
        localBundle = ᴭ.ˈ(paramParcel, n);
        break;
      case 8: 
        localAccount = (Account)ᴭ.ˊ(paramParcel, n, Account.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, n);
    }
    if (paramParcel.dataPosition() != m) {
      throw new ᴭ.if("Overread allowed size end=" + m, paramParcel);
    }
    return new zzi(k, j, i, str, localIBinder, arrayOfScope, localBundle, localAccount);
  }
  
  public zzi[] ᵁ(int paramInt)
  {
    return new zzi[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã
 * JD-Core Version:    0.7.0.1
 */