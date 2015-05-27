package o;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;

class qa
{
  private final Context dV;
  private final sx pr;
  
  public qa(Context paramContext)
  {
    this.dV = paramContext.getApplicationContext();
    this.pr = new sy(paramContext, "TwitterAdvertisingInfoPreferences");
  }
  
  private pz cp()
  {
    pz localpz = cn().cl();
    if (!ˎ(localpz))
    {
      localpz = co().cl();
      if (!ˎ(localpz))
      {
        pj.cd().ˑ("Fabric", "AdvertisingInfo not present");
        return localpz;
      }
      pj.cd().ˑ("Fabric", "Using AdvertisingInfo from Service Provider");
      return localpz;
    }
    pj.cd().ˑ("Fabric", "Using AdvertisingInfo from Reflection Provider");
    return localpz;
  }
  
  private void ˊ(pz parampz)
  {
    new Thread(new qb(this, parampz)).start();
  }
  
  @SuppressLint({"CommitPrefEdits"})
  private void ˋ(pz parampz)
  {
    if (ˎ(parampz))
    {
      this.pr.ˊ(this.pr.edit().putString("advertising_id", parampz.pX).putBoolean("limit_ad_tracking_enabled", parampz.Vq));
      return;
    }
    this.pr.ˊ(this.pr.edit().remove("advertising_id").remove("limit_ad_tracking_enabled"));
  }
  
  private boolean ˎ(pz parampz)
  {
    return (parampz != null) && (!TextUtils.isEmpty(parampz.pX));
  }
  
  public pz cl()
  {
    pz localpz = cm();
    if (ˎ(localpz))
    {
      pj.cd().ˑ("Fabric", "Using AdvertisingInfo from Preference Store");
      ˊ(localpz);
      return localpz;
    }
    localpz = cp();
    ˋ(localpz);
    return localpz;
  }
  
  protected pz cm()
  {
    return new pz(this.pr.dG().getString("advertising_id", ""), this.pr.dG().getBoolean("limit_ad_tracking_enabled", false));
  }
  
  public qe cn()
  {
    return new qc(this.dV);
  }
  
  public qe co()
  {
    return new qd(this.dV);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qa
 * JD-Core Version:    0.7.0.1
 */