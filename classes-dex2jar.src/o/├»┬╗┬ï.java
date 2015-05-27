package o;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.zzy;

public class ﻋ
  implements Parcelable.Creator<zzy>
{
  public static void ˊ(zzy paramzzy, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzy.BH);
    ṯ.ˊ(paramParcel, 2, paramzzy.ᒱ(), paramInt, false);
    ṯ.ˎ(paramParcel, 3, paramzzy.getSessionId());
    ṯ.ـ(paramParcel, i);
  }
  
  public zzy[] ᵉ(int paramInt)
  {
    return new zzy[paramInt];
  }
  
  public zzy ﹳ(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    Account localAccount = null;
    int i = 0;
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
        localAccount = (Account)ᴭ.ˊ(paramParcel, m, Account.CREATOR);
        break;
      case 3: 
        i = ᴭ.ʻ(paramParcel, m);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new zzy(j, localAccount, i);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï»
 * JD-Core Version:    0.7.0.1
 */