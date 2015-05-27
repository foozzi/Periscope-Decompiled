package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;

public class ᴘ
  implements Parcelable.Creator<Scope>
{
  public static void ˊ(Scope paramScope, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramScope.BH);
    ṯ.ˊ(paramParcel, 2, paramScope.ৰ(), false);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public Scope ʿ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    String str = null;
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
        str = ᴭ.ʾ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new Scope(i, str);
  }
  
  public Scope[] ᒄ(int paramInt)
  {
    return new Scope[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */