package o;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import android.util.SparseArray;

public abstract class ᐟ
  extends BroadcastReceiver
{
  private static final SparseArray<PowerManager.WakeLock> ɾ = new SparseArray();
  private static int ɿ = 1;
  
  public static ComponentName ˊ(Context paramContext, Intent paramIntent)
  {
    synchronized (ɾ)
    {
      int i = ɿ;
      ɿ += 1;
      if (ɿ <= 0) {
        ɿ = 1;
      }
      paramIntent.putExtra("android.support.content.wakelockid", i);
      paramIntent = paramContext.startService(paramIntent);
      if (paramIntent == null) {
        return null;
      }
      paramContext = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "wake:" + paramIntent.flattenToShortString());
      paramContext.setReferenceCounted(false);
      paramContext.acquire(60000L);
      ɾ.put(i, paramContext);
      return paramIntent;
    }
  }
  
  public static boolean ˊ(Intent arg0)
  {
    int i = ???.getIntExtra("android.support.content.wakelockid", 0);
    if (i == 0) {
      return false;
    }
    synchronized (ɾ)
    {
      PowerManager.WakeLock localWakeLock = (PowerManager.WakeLock)ɾ.get(i);
      if (localWakeLock != null)
      {
        localWakeLock.release();
        ɾ.remove(i);
        return true;
      }
      Log.w("WakefulBroadcastReceiver", "No active wake lock id #" + i);
      return true;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */