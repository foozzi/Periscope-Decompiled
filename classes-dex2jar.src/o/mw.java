package o;

import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;

class mw
  extends lz<OAuthResponse>
{
  mw(mv parammv) {}
  
  public void ˊ(mf<OAuthResponse> parammf)
  {
    this.QH.QF = ((OAuthResponse)parammf.data).Rj;
    parammf = mv.ˊ(this.QH).ˊ(this.QH.QF);
    pj.cd().ˑ("Twitter", "Redirecting user to web view to complete authorization flow");
    this.QH.ˊ(mv.ˋ(this.QH), new na(mv.ˊ(this.QH).ˊ(mv.ˎ(this.QH)), this.QH), parammf, new mz());
  }
  
  public void ˊ(mo parammo)
  {
    pj.cd().ˏ("Twitter", "Failed to get request token", parammo);
    this.QH.ˊ(1, new ml("Failed to get request token"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mw
 * JD-Core Version:    0.7.0.1
 */