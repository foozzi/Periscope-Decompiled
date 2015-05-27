package o;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.ConnectionResult;

public class โ
  implements Parcelable.Creator<ConnectionResult>
{
  public static void ˊ(ConnectionResult paramConnectionResult, Parcel paramParcel, int paramInt)
  {
    int i = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramConnectionResult.BH);
    ṯ.ˎ(paramParcel, 2, paramConnectionResult.getErrorCode());
    ṯ.ˊ(paramParcel, 3, paramConnectionResult.ט(), paramInt, false);
    ṯ.ـ(paramParcel, i);
  }
  
  public ConnectionResult[] Ϊ(int paramInt)
  {
    return new ConnectionResult[paramInt];
  }
  
  public ConnectionResult ι(Parcel paramParcel)
  {
    int k = ᴭ.ˌ(paramParcel);
    int j = 0;
    int i = 0;
    PendingIntent localPendingIntent = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(m))
      {
      default: 
        break;
      case 1: 
        j = ᴭ.ʻ(paramParcel, m);
        break;
      case 2: 
        i = ᴭ.ʻ(paramParcel, m);
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
    return new ConnectionResult(j, i, localPendingIntent);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¹
 * JD-Core Version:    0.7.0.1
 */