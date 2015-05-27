package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.sdk.android.core.TwitterAuthConfig;

public final class mk
  implements Parcelable.Creator<TwitterAuthConfig>
{
  public TwitterAuthConfig ᵋ(Parcel paramParcel)
  {
    return new TwitterAuthConfig(paramParcel, null);
  }
  
  public TwitterAuthConfig[] ἱ(int paramInt)
  {
    return new TwitterAuthConfig[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mk
 * JD-Core Version:    0.7.0.1
 */