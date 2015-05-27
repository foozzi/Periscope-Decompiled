package o;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.zzh;
import java.util.List;

public class bi
  implements Parcelable.Creator<zzh>
{
  public static void ˊ(zzh paramzzh, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˋ(paramParcel, 1, paramzzh.HM, false);
    ṯ.ˎ(paramParcel, 1000, paramzzh.ถ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzh[] ī(int paramInt)
  {
    return new zzh[paramInt];
  }
  
  public zzh ʳ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    Object localObject = zzh.HL;
    while (paramParcel.dataPosition() < j)
    {
      int k = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(k))
      {
      default: 
        break;
      case 1: 
        localObject = ᴭ.ˎ(paramParcel, k, Location.CREATOR);
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
    return new zzh(i, (List)localObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bi
 * JD-Core Version:    0.7.0.1
 */