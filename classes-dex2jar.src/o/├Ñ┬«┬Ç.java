package o;

import android.content.Context;
import android.content.ServiceConnection;

public abstract class 宀
{
  private static final Object Ev = new Object();
  private static 宀 Ew;
  
  public static 宀 ᵢ(Context paramContext)
  {
    synchronized (Ev)
    {
      if (Ew == null) {
        Ew = new ﬥ(paramContext.getApplicationContext());
      }
    }
    return Ew;
  }
  
  public abstract boolean ˊ(String paramString1, ServiceConnection paramServiceConnection, String paramString2);
  
  public abstract void ˋ(String paramString1, ServiceConnection paramServiceConnection, String paramString2);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.å®
 * JD-Core Version:    0.7.0.1
 */