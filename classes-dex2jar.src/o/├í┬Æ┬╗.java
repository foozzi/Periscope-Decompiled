package o;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public class ᒻ
{
  static final ᒻ.ˎ ᴴ = new ᒻ.if();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ᴴ = new ᒻ.ˋ();
      return;
    }
  }
  
  public static boolean ˊ(KeyEvent paramKeyEvent)
  {
    return ᴴ.metaStateHasNoModifiers(paramKeyEvent.getMetaState());
  }
  
  public static boolean ˊ(KeyEvent paramKeyEvent, int paramInt)
  {
    return ᴴ.metaStateHasModifiers(paramKeyEvent.getMetaState(), paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»
 * JD-Core Version:    0.7.0.1
 */