package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzuw;
import java.util.ArrayList;

public class al
  implements Parcelable.Creator<zzuw>
{
  public static void ˊ(zzuw paramzzuw, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramzzuw.BH);
    ṯ.ˊ(paramParcel, 2, paramzzuw.GU);
    ṯ.ˋ(paramParcel, 3, paramzzuw.GV, false);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public zzuw ᵎ(Parcel paramParcel)
  {
    int j = ᴭ.ˌ(paramParcel);
    int i = 0;
    boolean bool = false;
    ArrayList localArrayList = null;
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
        bool = ᴭ.ˎ(paramParcel, k);
        break;
      case 3: 
        localArrayList = ᴭ.ˎ(paramParcel, k, Scope.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, k);
    }
    if (paramParcel.dataPosition() != j) {
      throw new ᴭ.if("Overread allowed size end=" + j, paramParcel);
    }
    return new zzuw(i, bool, localArrayList);
  }
  
  public zzuw[] רּ(int paramInt)
  {
    return new zzuw[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.al
 * JD-Core Version:    0.7.0.1
 */