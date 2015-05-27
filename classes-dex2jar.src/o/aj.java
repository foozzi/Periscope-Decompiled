package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.zzut;

public class aj
  implements Parcelable.Creator<zzut>
{
  public static void ˊ(zzut paramzzut, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzut.BH);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzut ᴵ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
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
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zzut(i);
  }
  
  public zzut[] נּ(int paramInt)
  {
    return new zzut[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aj
 * JD-Core Version:    0.7.0.1
 */