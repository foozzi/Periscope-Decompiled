package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.zzl;

public class bl
  implements Parcelable.Creator<zzl>
{
  public static void ˊ(zzl paramzzl, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzl.HN);
    ṯ.ˎ(paramParcel, 1000, paramzzl.ถ());
    ṯ.ˎ(paramParcel, 2, paramzzl.HO);
    ṯ.ˊ(paramParcel, 3, paramzzl.HP);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzl[] ŀ(int paramInt)
  {
    return new zzl[paramInt];
  }
  
  public zzl ˇ(Parcel paramParcel)
  {
    int m = ᴭ.ˌ(paramParcel);
    int k = 0;
    int j = 1;
    int i = 1;
    long l = 0L;
    while (paramParcel.dataPosition() < m)
    {
      int n = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(n))
      {
      default: 
        break;
      case 1: 
        j = ᴭ.ʻ(paramParcel, n);
        break;
      case 1000: 
        k = ᴭ.ʻ(paramParcel, n);
        break;
      case 2: 
        i = ᴭ.ʻ(paramParcel, n);
        break;
      case 3: 
        l = ᴭ.ʽ(paramParcel, n);
        break;
      }
      ᴭ.ˋ(paramParcel, n);
    }
    if (paramParcel.dataPosition() != m) {
      throw new ᴭ.if("Overread allowed size end=" + m, paramParcel);
    }
    return new zzl(k, j, i, l);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bl
 * JD-Core Version:    0.7.0.1
 */