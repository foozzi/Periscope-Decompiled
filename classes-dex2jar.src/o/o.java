package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.zzox;

public class o
  implements Parcelable.Creator<zzox>
{
  public static void ˊ(zzox paramzzox, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzox.uid);
    ṯ.ˎ(paramParcel, 1000, paramzzox.ถ());
    ṯ.ˊ(paramParcel, 2, paramzzox.packageName, false);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzox ʹ(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    int i = 0;
    String str = null;
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
        str = ᴭ.ʾ(paramParcel, m);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new zzox(j, i, str);
  }
  
  public zzox[] ゝ(int paramInt)
  {
    return new zzox[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.o
 * JD-Core Version:    0.7.0.1
 */