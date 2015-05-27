package o;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;

public class ᔬ
  implements Parcelable.Creator<Status>
{
  public static void ˊ(Status paramStatus, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramStatus.getStatusCode());
    ṯ.ˎ(paramParcel, 1000, paramStatus.ถ());
    ṯ.ˊ(paramParcel, 2, paramStatus.ฅ(), false);
    ṯ.ˊ(paramParcel, 3, paramStatus.ค(), paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public Status ʾ(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    int i = 0;
    String str = null;
    PendingIntent localPendingIntent = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(m))
      {
      default: 
        break;
      case 1: 
        i = ᴭ.ʻ(paramParcel, m);
        break;
      case 1000: 
        j = ᴭ.ʻ(paramParcel, m);
        break;
      case 2: 
        str = ᴭ.ʾ(paramParcel, m);
        break;
      case 3: 
        localPendingIntent = (PendingIntent)ᴭ.ˊ(paramParcel, m, PendingIntent.CREATOR);
        break;
      }
      ᴭ.ˋ(paramParcel, m);
    }
    if (paramParcel.dataPosition() != k) {
      throw new ᴭ.if("Overread allowed size end=" + k, paramParcel);
    }
    return new Status(j, i, str, localPendingIntent);
  }
  
  public Status[] ง(int paramInt)
  {
    return new Status[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¬
 * JD-Core Version:    0.7.0.1
 */