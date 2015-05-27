package o;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

class aci
{
  private final SharedPreferences blm;
  private final ot bny;
  private final Context mContext;
  
  public aci(Context paramContext, ot paramot, SharedPreferences paramSharedPreferences)
  {
    this.mContext = paramContext;
    this.bny = paramot;
    this.blm = paramSharedPreferences;
    this.bny.ʲ(this);
  }
  
  public void onEventMainThread(acj paramacj)
  {
    akk.ˑ("GcmRegistrar", "Received GcmRegistrationEvent for " + paramacj.bxI);
    ĭ(paramacj.bxI);
  }
  
  public void onEventMainThread(ack paramack)
  {
    akk.ˑ("GcmRegistrar", "Received GcmUnregistrationEvent");
    wL();
  }
  
  public String wK()
  {
    String str = this.blm.getString("registration_id", "");
    if (str.isEmpty())
    {
      akk.ـ("GcmRegistrar", "Registration not found.");
      return "";
    }
    if (this.blm.getInt("app_version", -2147483648) != akn.ᐤ(this.mContext))
    {
      akk.ـ("GcmRegistrar", "App version changed.");
      return "";
    }
    return str;
  }
  
  public void wL()
  {
    this.blm.edit().remove("registration_id").remove("app_version").apply();
  }
  
  public void ĭ(String paramString)
  {
    int i = akn.ᐤ(this.mContext);
    this.blm.edit().putString("registration_id", paramString).putInt("app_version", i).apply();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aci
 * JD-Core Version:    0.7.0.1
 */