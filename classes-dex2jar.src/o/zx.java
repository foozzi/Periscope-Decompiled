package o;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.lang.reflect.Field;

public class zx
{
  private SharedPreferences blm;
  private String bsn;
  
  public zx(Context paramContext)
  {
    this.blm = PreferenceManager.getDefaultSharedPreferences(paramContext);
  }
  
  public void logout()
  {
    this.bsn = null;
  }
  
  public String ve()
  {
    if (TextUtils.isEmpty(this.bsn)) {
      this.bsn = this.blm.getString((String)zf.cON.ˊ("o.zf").getField("brJ").get(null), null);
    }
    return this.bsn;
  }
  
  public void ヽ(String paramString)
  {
    SharedPreferences.Editor localEditor = this.blm.edit();
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("brJ").get(null), paramString);
    localEditor.apply();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zx
 * JD-Core Version:    0.7.0.1
 */