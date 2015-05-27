package o;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

class qd
  implements qe
{
  private final Context dV;
  
  public qd(Context paramContext)
  {
    this.dV = paramContext.getApplicationContext();
  }
  
  public pz cl()
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      pj.cd().ˑ("Fabric", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
      return null;
    }
    try
    {
      this.dV.getPackageManager().getPackageInfo("com.android.vending", 0);
    }
    catch (Exception localException1)
    {
      pj.cd().ˊ("Fabric", "Unable to determine if Google Play Services is available", localException1);
      return null;
    }
    if localif = new if(null);
    Object localObject1 = new Intent("com.google.android.gms.ads.identifier.service.START");
    ((Intent)localObject1).setPackage("com.google.android.gms");
    for (;;)
    {
      try
      {
        boolean bool = this.dV.bindService((Intent)localObject1, localif, 1);
        if (bool) {
          try
          {
            localObject1 = new qd.ˊ(localif.getBinder());
            localObject1 = new pz(((qd.ˊ)localObject1).getId(), ((qd.ˊ)localObject1).cr());
            return localObject1;
          }
          catch (Exception localException2)
          {
            pj.cd().ˎ("Fabric", "Exception in binding to Google Play Service to capture AdvertisingId", localException2);
          }
          finally
          {
            this.dV.unbindService(localif);
          }
        }
        pj.cd().ˑ("Fabric", "Could not bind to Google Play Service to capture AdvertisingId");
      }
      catch (Throwable localThrowable)
      {
        pj.cd().ˊ("Fabric", "Could not bind to Google Play Service to capture AdvertisingId", localThrowable);
      }
      return null;
    }
  }
  
  static final class if
    implements ServiceConnection
  {
    private boolean Vt = false;
    private final LinkedBlockingQueue<IBinder> Vu = new LinkedBlockingQueue(1);
    
    public IBinder getBinder()
    {
      if (this.Vt) {
        pj.cd().ᐨ("Fabric", "getBinder already called");
      }
      this.Vt = true;
      try
      {
        IBinder localIBinder = (IBinder)this.Vu.poll(200L, TimeUnit.MILLISECONDS);
        return localIBinder;
      }
      catch (InterruptedException localInterruptedException) {}
      return null;
    }
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      try
      {
        this.Vu.put(paramIBinder);
        return;
      }
      catch (InterruptedException paramComponentName) {}
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      this.Vu.clear();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qd
 * JD-Core Version:    0.7.0.1
 */