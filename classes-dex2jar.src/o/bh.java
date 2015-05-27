package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.LocationRequest;

public class bh
  implements Parcelable.Creator<LocationRequest>
{
  public static void ˊ(LocationRequest paramLocationRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramLocationRequest.ﭔ);
    ṯ.ˎ(paramParcel, 1000, paramLocationRequest.ถ());
    ṯ.ˊ(paramParcel, 2, paramLocationRequest.Hk);
    ṯ.ˊ(paramParcel, 3, paramLocationRequest.Hl);
    ṯ.ˊ(paramParcel, 4, paramLocationRequest.Hm);
    ṯ.ˊ(paramParcel, 5, paramLocationRequest.Hn);
    ṯ.ˎ(paramParcel, 6, paramLocationRequest.Ho);
    ṯ.ˊ(paramParcel, 7, paramLocationRequest.Hp);
    ṯ.ˊ(paramParcel, 8, paramLocationRequest.Hq);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public LocationRequest[] ﻴ(int paramInt)
  {
    return new LocationRequest[paramInt];
  }
  
  public LocationRequest ｰ(Parcel paramParcel)
  {
    int m = ᴭ.ˌ(paramParcel);
    int k = 0;
    int j = 102;
    long l4 = 3600000L;
    long l3 = 600000L;
    boolean bool = false;
    long l2 = 9223372036854775807L;
    int i = 2147483647;
    float f = 0.0F;
    long l1 = 0L;
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
        l4 = ᴭ.ʽ(paramParcel, n);
        break;
      case 3: 
        l3 = ᴭ.ʽ(paramParcel, n);
        break;
      case 4: 
        bool = ᴭ.ˎ(paramParcel, n);
        break;
      case 5: 
        l2 = ᴭ.ʽ(paramParcel, n);
        break;
      case 6: 
        i = ᴭ.ʻ(paramParcel, n);
        break;
      case 7: 
        f = ᴭ.ͺ(paramParcel, n);
        break;
      case 8: 
        l1 = ᴭ.ʽ(paramParcel, n);
        break;
      }
      ᴭ.ˋ(paramParcel, n);
    }
    if (paramParcel.dataPosition() != m) {
      throw new ᴭ.if("Overread allowed size end=" + m, paramParcel);
    }
    return new LocationRequest(k, j, l4, l3, bool, l2, i, f, l1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bh
 * JD-Core Version:    0.7.0.1
 */