package o;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

class ｔ
{
  private final Context dV;
  private final sq nK;
  private final qr ok;
  private final sx pr;
  private final ｆ qi;
  private final tg qj;
  private final ｉ qk;
  private final qk ql;
  
  public ｔ(Context paramContext, ｆ paramｆ, qr paramqr, tg paramtg, ｉ paramｉ, sx paramsx, qk paramqk, sq paramsq)
  {
    this.dV = paramContext;
    this.qi = paramｆ;
    this.ok = paramqr;
    this.qj = paramtg;
    this.qk = paramｉ;
    this.pr = paramsx;
    this.ql = paramqk;
    this.nK = paramsq;
  }
  
  public void Ἴ()
  {
    long l1 = this.ql.cy();
    long l2 = this.qj.YM * 1000;
    pj.cd().ˑ("Beta", "Check for updates delay: " + l2);
    long l3 = this.pr.dG().getLong("last_update_check", 0L);
    pj.cd().ˑ("Beta", "Check for updates last check time: " + l3);
    l2 = l3 + l2;
    pj.cd().ˑ("Beta", "Check for updates current time: " + l1 + ", next check time: " + l2);
    if (l1 >= l2) {
      try
      {
        pj.cd().ˑ("Beta", "Performing update check");
        String str1 = new qf().ᐠ(this.dV);
        String str2 = this.ok.ʹ(str1, this.qk.packageName);
        new ｖ(this.qi, this.qi.Ĩ(), this.qj.YL, this.nK, new ｴ()).ˊ(str1, str2, this.qk);
        this.pr.edit().putLong("last_update_check", l1).commit();
      }
      finally
      {
        this.pr.edit().putLong("last_update_check", l1).commit();
      }
    }
    pj.cd().ˑ("Beta", "Check for updates next check time was not passed");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½
 * JD-Core Version:    0.7.0.1
 */