package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.zzox;
import com.google.android.gms.internal.zzpg;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class y
  implements Parcelable.Creator<zzpg>
{
  public static void ˊ(zzpg paramzzpg, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˊ(paramParcel, 1, paramzzpg.Gm, paramInt, false);
    ṯ.ˎ(paramParcel, 1000, paramzzpg.ถ());
    ṯ.ˊ(paramParcel, 2, paramzzpg.Gn);
    ṯ.ˊ(paramParcel, 3, paramzzpg.Go);
    ṯ.ˊ(paramParcel, 4, paramzzpg.Gp);
    ṯ.ˋ(paramParcel, 5, paramzzpg.Gq, false);
    ṯ.ˊ(paramParcel, 6, paramzzpg.mTag, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public zzpg ՙ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    LocationRequest localLocationRequest = null;
    boolean bool3 = false;
    boolean bool2 = true;
    boolean bool1 = true;
    Object localObject = zzpg.Gl;
    String str = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(k))
      {
      default: 
        break;
      case 1: 
        localLocationRequest = (LocationRequest)ᴭ.ˊ(paramParcel, k, LocationRequest.CREATOR);
        break;
      case 1000: 
        i = ᴭ.ʻ(paramParcel, k);
        break;
      case 2: 
        bool3 = ᴭ.ˎ(paramParcel, k);
        break;
      case 3: 
        bool2 = ᴭ.ˎ(paramParcel, k);
        break;
      case 4: 
        bool1 = ᴭ.ˎ(paramParcel, k);
        break;
      case 5: 
        localObject = ᴭ.ˎ(paramParcel, k, zzox.CREATOR);
        break;
      case 6: 
        str = ᴭ.ʾ(paramParcel, k);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zzpg(i, localLocationRequest, bool3, bool2, bool1, (List)localObject, str);
  }
  
  public zzpg[] ー(int paramInt)
  {
    return new zzpg[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.y
 * JD-Core Version:    0.7.0.1
 */