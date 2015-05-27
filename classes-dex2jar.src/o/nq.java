package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;

public final class nq
  implements Parcelable.Creator<OAuth2Token>
{
  public OAuth2Token[] ί(int paramInt)
  {
    return new OAuth2Token[paramInt];
  }
  
  public OAuth2Token ﾟ(Parcel paramParcel)
  {
    return new OAuth2Token(paramParcel, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nq
 * JD-Core Version:    0.7.0.1
 */