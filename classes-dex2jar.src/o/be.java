package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.zzb;
import java.util.ArrayList;

public class be
  implements Parcelable.Creator<zzb>
{
  public static void ˊ(zzb paramzzb, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˊ(paramParcel, 1, paramzzb.У(), false);
    ṯ.ˎ(paramParcel, 1000, paramzzb.ถ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzb ﹺ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    ArrayList localArrayList = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(k))
      {
      default: 
        break;
      case 1: 
        localArrayList = ᴭ.ˌ(paramParcel, k);
        break;
      case 1000: 
        i = ᴭ.ʻ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zzb(i, localArrayList);
  }
  
  public zzb[] ﺫ(int paramInt)
  {
    return new zzb[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.be
 * JD-Core Version:    0.7.0.1
 */