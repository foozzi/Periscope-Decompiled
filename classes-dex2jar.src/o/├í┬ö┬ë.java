package o;

import android.os.Build.VERSION;
import android.view.LayoutInflater;

public class ᔉ
{
  static final ᔉ.if ᴿ = new ᔉ.ˊ();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      ᴿ = new ᔉ.ˎ();
      return;
    }
    if (i >= 11)
    {
      ᴿ = new ᔉ.ˋ();
      return;
    }
  }
  
  public static void ˊ(LayoutInflater paramLayoutInflater, ᕑ paramᕑ)
  {
    ᴿ.ˊ(paramLayoutInflater, paramᕑ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */