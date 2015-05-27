package o;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class acx
  implements ServiceConnection
{
  private acw bye;
  private final HashMap<String, Runnable> byf = new HashMap();
  private final int[] byg = new int[0];
  
  public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    synchronized (this.byg)
    {
      this.bye = ((acw.if)paramIBinder).wQ();
      paramIBinder = this.byf.values().iterator();
      while (paramIBinder.hasNext())
      {
        Runnable localRunnable = (Runnable)paramIBinder.next();
        this.bye.execute(localRunnable);
      }
      this.byf.clear();
      return;
    }
  }
  
  public void onServiceDisconnected(ComponentName arg1)
  {
    synchronized (this.byg)
    {
      this.bye = null;
      return;
    }
  }
  
  public String wR()
  {
    return anw.ᔨ(6);
  }
  
  public String ˏ(Runnable paramRunnable)
  {
    String str = wR();
    synchronized (this.byg)
    {
      if (this.bye != null) {
        this.bye.execute(paramRunnable);
      } else {
        this.byf.put(str, paramRunnable);
      }
      return str;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acx
 * JD-Core Version:    0.7.0.1
 */