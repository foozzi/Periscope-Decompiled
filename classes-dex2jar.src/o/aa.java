package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.zzpk;

public class aa
  implements Parcelable.Creator<zzpk>
{
  public static void ˊ(zzpk paramzzpk, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˊ(paramParcel, 1, paramzzpk.ｸ(), false);
    ṯ.ˎ(paramParcel, 1000, paramzzpk.ถ());
    ṯ.ˊ(paramParcel, 2, paramzzpk.ｹ());
    ṯ.ˊ(paramParcel, 3, paramzzpk.ｳ());
    ṯ.ˊ(paramParcel, 4, paramzzpk.getLatitude());
    ṯ.ˊ(paramParcel, 5, paramzzpk.getLongitude());
    ṯ.ˊ(paramParcel, 6, paramzzpk.ｷ());
    ṯ.ˎ(paramParcel, 7, paramzzpk.ｽ());
    ṯ.ˎ(paramParcel, 8, paramzzpk.ﾁ());
    ṯ.ˎ(paramParcel, 9, paramzzpk.ﾊ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzpk ٴ(Parcel paramParcel)
  {
    int n = ᴭ.ˌ(paramParcel);
    int m = 0;
    String str = null;
    int k = 0;
    short s = 0;
    double d2 = 0.0D;
    double d1 = 0.0D;
    float f = 0.0F;
    long l = 0L;
    int j = 0;
    int i = -1;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(i1))
      {
      default: 
        break;
      case 1: 
        str = ᴭ.ʾ(paramParcel, i1);
        break;
      case 1000: 
        m = ᴭ.ʻ(paramParcel, i1);
        break;
      case 2: 
        l = ᴭ.ʽ(paramParcel, i1);
        break;
      case 3: 
        s = ᴭ.ᐝ(paramParcel, i1);
        break;
      case 4: 
        d2 = ᴭ.ι(paramParcel, i1);
        break;
      case 5: 
        d1 = ᴭ.ι(paramParcel, i1);
        break;
      case 6: 
        f = ᴭ.ͺ(paramParcel, i1);
        break;
      case 7: 
        k = ᴭ.ʻ(paramParcel, i1);
        break;
      case 8: 
        j = ᴭ.ʻ(paramParcel, i1);
        break;
      case 9: 
        i = ᴭ.ʻ(paramParcel, i1);
        break;
      }
      ᴭ.ˋ(paramParcel, i1);
    }
    if (paramParcel.dataPosition() != n) {
      throw new ᴭ.if("Overread allowed size end=" + n, paramParcel);
    }
    return new zzpk(m, str, k, s, d2, d1, f, l, j, i);
  }
  
  public zzpk[] זּ(int paramInt)
  {
    return new zzpk[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aa
 * JD-Core Version:    0.7.0.1
 */