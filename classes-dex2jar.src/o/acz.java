package o;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class acz
{
  private final SharedPreferences blm;
  
  public acz(Context paramContext)
  {
    this.blm = paramContext.getSharedPreferences("tv.periscope", 0);
  }
  
  public acy wS()
  {
    return new acy(this.blm.getBoolean("notif_followed_live", true), this.blm.getBoolean("notif_followed_shared", true), this.blm.getBoolean("notif_user_follows_you", false), this.blm.getBoolean("notif_suggested_first", true), this.blm.getBoolean("notif_autosave", false));
  }
  
  public void ˊ(acy paramacy)
  {
    this.blm.edit().putBoolean("notif_followed_live", paramacy.byh).putBoolean("notif_followed_shared", paramacy.byi).putBoolean("notif_user_follows_you", paramacy.byj).putBoolean("notif_suggested_first", paramacy.byk).putBoolean("notif_autosave", paramacy.byl).apply();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acz
 * JD-Core Version:    0.7.0.1
 */