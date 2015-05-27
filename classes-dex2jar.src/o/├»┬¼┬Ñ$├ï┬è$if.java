package o;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Iterator;
import java.util.Set;

public class ﬥ$ˊ$if
  implements ServiceConnection
{
  public ﬥ$ˊ$if(ﬥ.ˊ paramˊ) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (ﬥ.ˊ(this.EI.EH))
    {
      ﬥ.ˊ.ˊ(this.EI, paramIBinder);
      ﬥ.ˊ.ˊ(this.EI, paramComponentName);
      Iterator localIterator = ﬥ.ˊ.ˋ(this.EI).iterator();
      while (localIterator.hasNext()) {
        ((ServiceConnection)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
      }
      ﬥ.ˊ.ˊ(this.EI, 1);
      return;
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (ﬥ.ˊ(this.EI.EH))
    {
      ﬥ.ˊ.ˊ(this.EI, null);
      ﬥ.ˊ.ˊ(this.EI, paramComponentName);
      Iterator localIterator = ﬥ.ˊ.ˋ(this.EI).iterator();
      while (localIterator.hasNext()) {
        ((ServiceConnection)localIterator.next()).onServiceDisconnected(paramComponentName);
      }
      ﬥ.ˊ.ˊ(this.EI, 2);
      return;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬¥.Ë.if
 * JD-Core Version:    0.7.0.1
 */