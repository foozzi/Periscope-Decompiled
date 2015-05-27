package o;

import android.os.Build.VERSION;
import android.os.Bundle;

public class ۥ
  extends ᐩ.if
{
  private static final ۥ.if ﺒ;
  public static final ᐩ.if.if ﺛ = new ᐠ();
  private final Bundle ᑋ;
  private final String ᴷ;
  private final CharSequence ᵏ;
  private final CharSequence[] ⅼ;
  private final boolean ﭘ;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 20) {
      ﺒ = new ۥ.ˊ();
    } else if (Build.VERSION.SDK_INT >= 16) {
      ﺒ = new ۥ.ˎ();
    } else {
      ﺒ = new ۥ.ˋ();
    }
  }
  
  public boolean getAllowFreeFormInput()
  {
    return this.ﭘ;
  }
  
  public CharSequence[] getChoices()
  {
    return this.ⅼ;
  }
  
  public Bundle getExtras()
  {
    return this.ᑋ;
  }
  
  public CharSequence getLabel()
  {
    return this.ᵏ;
  }
  
  public String getResultKey()
  {
    return this.ᴷ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Û¥
 * JD-Core Version:    0.7.0.1
 */