package o;

import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;

class mx
  extends lz<OAuthResponse>
{
  mx(mv parammv) {}
  
  public void ˊ(mf<OAuthResponse> parammf)
  {
    Intent localIntent = new Intent();
    parammf = (OAuthResponse)parammf.data;
    localIntent.putExtra("screen_name", parammf.nF);
    localIntent.putExtra("user_id", parammf.Rq);
    localIntent.putExtra("tk", parammf.Rj.Qn);
    localIntent.putExtra("ts", parammf.Rj.Qo);
    this.QH.QE.ˊ(-1, localIntent);
  }
  
  public void ˊ(mo parammo)
  {
    pj.cd().ˏ("Twitter", "Failed to get access token", parammo);
    this.QH.ˊ(1, new ml("Failed to get access token"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mx
 * JD-Core Version:    0.7.0.1
 */