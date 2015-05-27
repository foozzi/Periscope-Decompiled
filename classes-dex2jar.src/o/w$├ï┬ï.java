package o;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.zzh;

class w$ˋ
  extends bg.if
{
  private Handler Gh;
  
  public void ˊ(zzh paramzzh)
  {
    if (this.Gh == null)
    {
      Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
      return;
    }
    Message localMessage = Message.obtain();
    localMessage.obj = paramzzh;
    this.Gh.sendMessage(localMessage);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.w.Ë
 * JD-Core Version:    0.7.0.1
 */