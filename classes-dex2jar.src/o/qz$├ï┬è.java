package o;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class qz$ˊ
  extends Handler
{
  public qz$ˊ()
  {
    super(Looper.getMainLooper());
  }
  
  public void handleMessage(Message paramMessage)
  {
    qz.if localif = (qz.if)paramMessage.obj;
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      qz.ˎ(localif.WS, localif.WT[0]);
      return;
    }
    localif.WS.onProgressUpdate(localif.WT);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qz.Ë
 * JD-Core Version:    0.7.0.1
 */