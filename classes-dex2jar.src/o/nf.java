package o;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthConfig;

public class nf
{
  private final TwitterAuthConfig PU;
  final mt QQ;
  final mh<mr> QR;
  private final Context dV;
  
  public nf()
  {
    this(mn.bd().getContext(), mn.bd().be(), mn.bd().bj(), if.by());
  }
  
  nf(Context paramContext, TwitterAuthConfig paramTwitterAuthConfig, mh<mr> parammh, mt parammt)
  {
    this.QQ = parammt;
    this.dV = paramContext;
    this.PU = paramTwitterAuthConfig;
    this.QR = parammh;
  }
  
  private void bx()
  {
    nu localnu = getScribeClient();
    if (localnu == null) {
      return;
    }
    localnu.ˊ(new nw[] { new nw.if().וֹ("android").ﹲ("login").ﹷ("").ﹻ("").ﹼ("").ﺑ("impression").bU() });
  }
  
  private boolean ˊ(Activity paramActivity, nf.ˊ paramˊ)
  {
    if (nb.ˆ(paramActivity))
    {
      pj.cd().ˑ("Twitter", "Using SSO");
      return this.QQ.ˊ(paramActivity, new nb(this.PU, paramˊ, this.PU.bc()));
    }
    return false;
  }
  
  private void ˋ(Activity paramActivity, lz<mr> paramlz)
  {
    bx();
    paramlz = new nf.ˊ(this.QR, paramlz);
    if ((!ˊ(paramActivity, paramlz)) && (!ˋ(paramActivity, paramlz))) {
      paramlz.ˊ(new ml("Authorize failed."));
    }
  }
  
  private boolean ˋ(Activity paramActivity, nf.ˊ paramˊ)
  {
    pj.cd().ˑ("Twitter", "Using OAuth");
    return this.QQ.ˊ(paramActivity, new my(this.PU, paramˊ, this.PU.bc()));
  }
  
  public int bc()
  {
    return this.PU.bc();
  }
  
  protected nu getScribeClient()
  {
    return oe.getScribeClient();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    pj.cd().ˑ("Twitter", "onActivityResult called with " + paramInt1 + " " + paramInt2);
    if (!this.QQ.bn())
    {
      pj.cd().ˏ("Twitter", "Authorize not in progress", null);
      return;
    }
    ms localms = this.QQ.bo();
    if ((localms != null) && (localms.ˊ(paramInt1, paramInt2, paramIntent))) {
      this.QQ.bm();
    }
  }
  
  public void ˊ(Activity paramActivity, lz<mr> paramlz)
  {
    if (paramActivity == null) {
      throw new IllegalArgumentException("Activity must not be null.");
    }
    if (paramlz == null) {
      throw new IllegalArgumentException("Callback must not be null.");
    }
    if (paramActivity.isFinishing())
    {
      pj.cd().ˏ("Twitter", "Cannot authorize, activity is finishing.", null);
      return;
    }
    ˋ(paramActivity, paramlz);
  }
  
  static class if
  {
    private static final mt QS = new mt();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nf
 * JD-Core Version:    0.7.0.1
 */