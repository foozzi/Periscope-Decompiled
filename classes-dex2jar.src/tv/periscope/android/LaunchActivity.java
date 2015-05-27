package tv.periscope.android;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import o.aad;
import o.acm;
import o.acn;
import o.aiz;
import o.ajd;
import o.akk;
import o.akn;
import o.ve;
import o.vf;
import o.vi;
import o.vi.if;
import tv.periscope.android.ui.main.MainActivity;

public class LaunchActivity
  extends Activity
{
  private acm bll;
  private SharedPreferences blm;
  
  private void ˊ(acn paramacn)
  {
    if ((paramacn.wP()) && (ˋ(this.blm)))
    {
      paramacn = paramacn.ˋ(this, 9000);
      paramacn.setOnDismissListener(new ve(this));
      paramacn.show();
      ˎ(this.blm);
      return;
    }
    ﾞ(MainActivity.class);
  }
  
  private boolean ˋ(SharedPreferences paramSharedPreferences)
  {
    boolean bool = paramSharedPreferences.getBoolean("error_dialog_shown", false);
    int i = paramSharedPreferences.getInt("app_version", -2147483648);
    int j = akn.ᐤ(this);
    return (!bool) || (i != j);
  }
  
  private void ˎ(SharedPreferences paramSharedPreferences)
  {
    paramSharedPreferences.edit().putBoolean("error_dialog_shown", true).putInt("app_version", akn.ᐤ(this)).apply();
  }
  
  private boolean ˏ(SharedPreferences paramSharedPreferences)
  {
    return !paramSharedPreferences.getBoolean("walkthrough_shown", false);
  }
  
  private void ᐝ(SharedPreferences paramSharedPreferences)
  {
    paramSharedPreferences.edit().putBoolean("walkthrough_shown", true).apply();
  }
  
  private void ﾞ(Class<?> paramClass)
  {
    startActivity(new Intent(this, paramClass));
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    vi.ˊ(vi.if.bna);
    this.bll = vf.tK();
    this.blm = getPreferences(0);
    if (vf.tI().vl()) {
      try
      {
        this.bll.ژ();
        ﾞ(MainActivity.class);
        return;
      }
      catch (acn paramBundle)
      {
        akk.ˏ("LaunchActivity", "Failed to register push.", paramBundle);
        ˊ(paramBundle);
        return;
      }
    }
    if (ˏ(this.blm))
    {
      ﾞ(ajd.class);
      ᐝ(this.blm);
      return;
    }
    ﾞ(aiz.class);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.LaunchActivity
 * JD-Core Version:    0.7.0.1
 */