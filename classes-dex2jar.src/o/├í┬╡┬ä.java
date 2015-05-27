package o;

import android.os.Build.VERSION;
import android.view.MenuItem;

public class ᵄ
{
  static final ᵄ.ˎ ṙ = new ᵄ.if();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      ṙ = new ᵄ.ˋ();
      return;
    }
    if (i >= 11)
    {
      ṙ = new ᵄ.ˊ();
      return;
    }
  }
  
  public static boolean ˎ(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof ǃ)) {
      return ((ǃ)paramMenuItem).expandActionView();
    }
    return ṙ.ˎ(paramMenuItem);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */