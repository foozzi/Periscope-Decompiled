package o;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import tv.periscope.android.api.PsUser;

public class adj
  implements als
{
  private final aad bnA;
  private final vn brN;
  private final alo byD;
  private final als.if byE;
  private final DialogInterface.OnClickListener byF = new adk(this);
  private final DialogInterface.OnCancelListener byG = new adl(this);
  private final Context mContext;
  
  public adj(Context paramContext, vn paramvn, aad paramaad, alo paramalo)
  {
    this(paramContext, paramvn, paramaad, paramalo, null);
  }
  
  public adj(Context paramContext, vn paramvn, aad paramaad, alo paramalo, als.if paramif)
  {
    this.mContext = paramContext;
    this.brN = paramvn;
    this.bnA = paramaad;
    this.byD = paramalo;
    this.byE = paramif;
  }
  
  private void Ǐ(String paramString)
  {
    if (this.byE != null) {
      this.byE.Ak();
    }
    this.byD.ᵇ(paramString);
  }
  
  public void onEventMainThread(aai paramaai)
  {
    switch (1.bnK[paramaai.bsV.ordinal()])
    {
    default: 
      return;
    }
    if ((this.byD.isShowing()) && (paramaai.vA()))
    {
      paramaai = (ww)paramaai.data;
      if ((this.byD.BB() == null) || (paramaai.boA.id.equals(this.byD.BB()))) {
        this.byD.ᐝ(paramaai.boA);
      }
    }
  }
  
  public void onEventMainThread(aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      return;
    case 1: 
    case 2: 
      this.byD.Av();
      return;
    }
    if (this.byD.isShowing()) {
      this.byD.BA();
    }
  }
  
  public boolean wY()
  {
    if (this.byD.isShowing())
    {
      Ǐ(null);
      return true;
    }
    return false;
  }
  
  public void ſ(String paramString)
  {
    this.brN.ᒼ(paramString);
  }
  
  public void Ɨ(String paramString)
  {
    this.brN.ᓑ(paramString);
  }
  
  public void ƚ(String paramString)
  {
    if ((paramString != null) && (paramString.equals(this.bnA.vx()))) {
      vi.ˊ(vi.if.bmQ);
    } else {
      vi.ˊ(vi.if.bmR);
    }
    if (this.byD.isShowing())
    {
      Ǐ(paramString);
      return;
    }
    this.brN.ว(paramString);
    this.byD.clear();
    this.byD.ᐝ(this.bnA.נּ(paramString));
    if (this.byE != null) {
      this.byE.Aj();
    }
    this.byD.show();
  }
  
  public void ʾ(String paramString1, String paramString2, String paramString3)
  {
    new AlertDialog.Builder(this.mContext).setMessage(this.mContext.getString(2131099688)).setNegativeButton(2131099689, this.byF).setPositiveButton(2131099687, new adm(this, paramString1)).setOnCancelListener(this.byG).show();
  }
  
  public void ﭕ(String paramString)
  {
    this.brN.ᐦ(paramString);
  }
  
  public void ﭜ(String paramString)
  {
    this.brN.ᒄ(paramString);
  }
  
  public void ﭤ(String paramString)
  {
    new AlertDialog.Builder(this.mContext).setMessage(this.mContext.getString(2131099906)).setNegativeButton(2131099689, null).setPositiveButton(2131099905, new adn(this, paramString)).show();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adj
 * JD-Core Version:    0.7.0.1
 */