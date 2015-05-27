package o;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class ヾ$ˏ
  implements ServiceConnection
{
  public ヾ$ˏ(ヾ paramヾ) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ﺧ.ʼ(paramIBinder, "Expecting a valid IBinder");
    ヾ.ˊ(this.Em, ﭞ.if.ᐝ(paramIBinder));
    this.Em.mHandler.sendMessage(this.Em.mHandler.obtainMessage(6, new ヾ.ᐝ(this.Em)));
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.Em.mHandler.sendMessage(this.Em.mHandler.obtainMessage(4, Integer.valueOf(1)));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¾.Ë
 * JD-Core Version:    0.7.0.1
 */