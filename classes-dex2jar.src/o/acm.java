package o;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;

public class acm
{
  private final SharedPreferences blm;
  private final zx bnF;
  private final ot bny;
  private final aci bxR;
  private final Context mContext;
  
  public acm(Context paramContext, ot paramot, zx paramzx)
  {
    this.mContext = paramContext.getApplicationContext();
    this.blm = paramContext.getApplicationContext().getSharedPreferences("push", 0);
    this.bny = paramot;
    this.bnF = paramzx;
    this.bxR = new aci(this.mContext, paramot, this.blm);
  }
  
  private void ͺ(String paramString1, String paramString2, String paramString3)
  {
    ComponentName localComponentName = new ComponentName(this.mContext.getPackageName(), acl.class.getName());
    paramString1 = new Intent(paramString1, null).setComponent(localComponentName).putExtra("cookie", paramString2);
    if (paramString3 != null) {
      paramString1.putExtra("registration_id", paramString3);
    }
    this.mContext.startService(paramString1);
  }
  
  ot tH()
  {
    return this.bny;
  }
  
  public void unregister()
  {
    ͺ("unregister", this.bnF.ve(), null);
  }
  
  public boolean ı(Context paramContext)
  {
    return ძ.ٴ(paramContext) == 0;
  }
  
  public void ژ()
  {
    if (!ı(this.mContext)) {
      throw new acn(ძ.ٴ(this.mContext));
    }
    String str = this.bxR.wK();
    if (TextUtils.isEmpty(str))
    {
      ͺ("register", this.bnF.ve(), null);
      return;
    }
    ͺ("register_token", this.bnF.ve(), str);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acm
 * JD-Core Version:    0.7.0.1
 */