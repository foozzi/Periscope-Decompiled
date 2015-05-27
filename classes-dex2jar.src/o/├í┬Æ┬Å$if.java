package o;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;

public class ᒏ$if<R extends ᒹ>
  extends Handler
{
  public ᒏ$if()
  {
    this(Looper.getMainLooper());
  }
  
  public ᒏ$if(Looper paramLooper)
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
      paramMessage = (Pair)paramMessage.obj;
      ˋ((ᓙ)paramMessage.first, (ᒹ)paramMessage.second);
      return;
    case 2: 
      ((ᒏ)paramMessage.obj).ٻ();
      return;
    }
    Log.wtf("AbstractPendingResult", "Don't know how to handle this message.");
  }
  
  public void ˊ(ᓙ<R> paramᓙ, R paramR)
  {
    sendMessage(obtainMessage(1, new Pair(paramᓙ, paramR)));
  }
  
  protected void ˋ(ᓙ<R> paramᓙ, R paramR)
  {
    try
    {
      paramᓙ.ˏ(paramR);
      return;
    }
    catch (RuntimeException paramᓙ)
    {
      ᒏ.ˎ(paramR);
      throw paramᓙ;
    }
  }
  
  public void ړ()
  {
    removeMessages(2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á.if
 * JD-Core Version:    0.7.0.1
 */