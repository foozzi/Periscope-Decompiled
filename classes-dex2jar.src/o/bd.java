package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.location.GeofencingRequest;
import java.util.ArrayList;

public class bd
  implements Parcelable.Creator<GeofencingRequest>
{
  public static void ˊ(GeofencingRequest paramGeofencingRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˋ(paramParcel, 1, paramGeofencingRequest.ƈ(), false);
    ṯ.ˎ(paramParcel, 1000, paramGeofencingRequest.ถ());
    ṯ.ˎ(paramParcel, 2, paramGeofencingRequest.ȝ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public GeofencingRequest ﹶ(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    ArrayList localArrayList = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(m))
      {
      default: 
        break;
      case 1: 
        localArrayList = ᴭ.ˎ(paramParcel, m, zzpk.CREATOR);
        break;
      case 1000: 
        j = ᴭ.ʻ(paramParcel, m);
        break;
      case 2: 
        i = ᴭ.ʻ(paramParcel, m);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new GeofencingRequest(j, localArrayList, i);
  }
  
  public GeofencingRequest[] ﺘ(int paramInt)
  {
    return new GeofencingRequest[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bd
 * JD-Core Version:    0.7.0.1
 */