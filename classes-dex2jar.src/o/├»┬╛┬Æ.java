package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.zzlm;

public class ﾒ
  implements Parcelable.Creator<zzlm>
{
  public static void ˊ(zzlm paramzzlm, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzlm.BH);
    ṯ.ˊ(paramParcel, 2, paramzzlm.getTimeMillis());
    ṯ.ˊ(paramParcel, 3, paramzzlm.乀(), false);
    ṯ.ˊ(paramParcel, 4, paramzzlm.宀(), false);
    ṯ.ˊ(paramParcel, 5, paramzzlm.ﬥ(), false);
    ṯ.ˊ(paramParcel, 6, paramzzlm.צּ(), false);
    ṯ.ˊ(paramParcel, 7, paramzzlm.בֿ(), false);
    ṯ.ˊ(paramParcel, 8, paramzzlm.ﭒ(), false);
    ṯ.ˊ(paramParcel, 9, paramzzlm.ﭞ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzlm[] ᵡ(int paramInt)
  {
    return new zzlm[paramInt];
  }
  
  public zzlm ﾞ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    long l2 = 0L;
    String str6 = null;
    String str5 = null;
    String str4 = null;
    String str3 = null;
    String str2 = null;
    String str1 = null;
    long l1 = 0L;
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
        l2 = ᴭ.ʽ(paramParcel, k);
        break;
      case 3: 
        str6 = ᴭ.ʾ(paramParcel, k);
        break;
      case 4: 
        str5 = ᴭ.ʾ(paramParcel, k);
        break;
      case 5: 
        str4 = ᴭ.ʾ(paramParcel, k);
        break;
      case 6: 
        str3 = ᴭ.ʾ(paramParcel, k);
        break;
      case 7: 
        str2 = ᴭ.ʾ(paramParcel, k);
        break;
      case 8: 
        str1 = ᴭ.ʾ(paramParcel, k);
        break;
      case 9: 
        l1 = ᴭ.ʽ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zzlm(i, l2, str6, str5, str4, str3, str2, str1, l1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¾
 * JD-Core Version:    0.7.0.1
 */