package o;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

class ژ
  implements ٲ
{
  private final Context dV;
  private final ٲ.if lG;
  private boolean lH;
  private boolean lI;
  private final BroadcastReceiver lJ = new ں(this);
  
  public ژ(Context paramContext, ٲ.if paramif)
  {
    this.dV = paramContext.getApplicationContext();
    this.lG = paramif;
  }
  
  private void unregister()
  {
    if (!this.lI) {
      return;
    }
    this.dV.unregisterReceiver(this.lJ);
    this.lI = false;
  }
  
  private boolean ˍ(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnected());
  }
  
  private void ژ()
  {
    if (this.lI) {
      return;
    }
    this.lH = ˍ(this.dV);
    this.dV.registerReceiver(this.lJ, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    this.lI = true;
  }
  
  public void onDestroy() {}
  
  public void onStart()
  {
    ژ();
  }
  
  public void onStop()
  {
    unregister();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú
 * JD-Core Version:    0.7.0.1
 */