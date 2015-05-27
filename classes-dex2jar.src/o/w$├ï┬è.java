package o;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

class w$ˊ
  extends bf.if
{
  private Handler Gh;
  
  w$ˊ(ay paramay, Looper paramLooper)
  {
    if (paramLooper == null) {
      paramay = new w.if(paramay);
    } else {
      paramay = new w.if(paramay, paramLooper);
    }
    this.Gh = paramay;
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    if (this.Gh == null)
    {
      Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
      return;
    }
    Message localMessage = Message.obtain();
    localMessage.what = 1;
    localMessage.obj = paramLocation;
    this.Gh.sendMessage(localMessage);
  }
  
  public void release()
  {
    this.Gh = null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.w.Ë
 * JD-Core Version:    0.7.0.1
 */