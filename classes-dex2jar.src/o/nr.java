package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;

public final class nr
  implements Parcelable.Creator<OAuthResponse>
{
  public OAuthResponse ı(Parcel paramParcel)
  {
    return new OAuthResponse(paramParcel, null);
  }
  
  public OAuthResponse[] ῐ(int paramInt)
  {
    return new OAuthResponse[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nr
 * JD-Core Version:    0.7.0.1
 */