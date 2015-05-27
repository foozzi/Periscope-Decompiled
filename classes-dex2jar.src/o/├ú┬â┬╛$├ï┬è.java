package o;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class ヾ$ˊ
  extends Handler
{
  public ヾ$ˊ(ヾ paramヾ, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (((paramMessage.what == 1) || (paramMessage.what == 5) || (paramMessage.what == 6)) && (!this.Em.isConnecting()))
    {
      paramMessage = (ヾ.ˋ)paramMessage.obj;
      paramMessage.Ṭ();
      paramMessage.unregister();
      return;
    }
    if (paramMessage.what == 3)
    {
      ヾ.ˊ(this.Em).ʽ(new ConnectionResult(((Integer)paramMessage.obj).intValue(), null));
      return;
    }
    if (paramMessage.what == 4)
    {
      ヾ.ˊ(this.Em, 4, null);
      ヾ.ˊ(this.Em).ᵅ(((Integer)paramMessage.obj).intValue());
      ヾ.ˊ(this.Em, 4, 1, null);
      return;
    }
    if ((paramMessage.what == 2) && (!this.Em.isConnected()))
    {
      paramMessage = (ヾ.ˋ)paramMessage.obj;
      paramMessage.Ṭ();
      paramMessage.unregister();
      return;
    }
    if ((paramMessage.what == 2) || (paramMessage.what == 1) || (paramMessage.what == 5) || (paramMessage.what == 6))
    {
      ((ヾ.ˋ)paramMessage.obj).ṯ();
      return;
    }
    Log.wtf("GmsClient", "Don't know how to handle this message.");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¾.Ë
 * JD-Core Version:    0.7.0.1
 */