package o;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class ᖨ$ˋ
  extends Handler
{
  ᖨ$ˋ(ᖨ paramᖨ, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      break;
    case 1: 
      ᖨ.ʿ(this.Dk);
      return;
    case 2: 
      ᖨ.ʾ(this.Dk);
      return;
    }
    Log.w("GoogleApiClientImpl", "Unknown message id: " + paramMessage.what);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¨.Ë
 * JD-Core Version:    0.7.0.1
 */