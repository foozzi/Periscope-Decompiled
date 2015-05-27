package o;

import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;

class ι$ˊ$if
  extends Handler
{
  ι$ˊ$if(ι.ˊ paramˊ) {}
  
  ι$ˊ$if(ι.ˊ paramˊ, Handler paramHandler)
  {
    super(paramHandler.getLooper());
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      break;
    case 1: 
      ι.ˊ.ˋ(this.ᔥ).onShowPress(ι.ˊ.ˊ(this.ᔥ));
      return;
    case 2: 
      ι.ˊ.ˎ(this.ᔥ);
      return;
    case 3: 
      if (ι.ˊ.ˏ(this.ᔥ) == null) {
        return;
      }
      if (!ι.ˊ.ᐝ(this.ᔥ))
      {
        ι.ˊ.ˏ(this.ᔥ).onSingleTapConfirmed(ι.ˊ.ˊ(this.ᔥ));
        return;
      }
      ι.ˊ.ˊ(this.ᔥ, true);
      return;
    }
    throw new RuntimeException("Unknown message " + paramMessage);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î¹.Ë.if
 * JD-Core Version:    0.7.0.1
 */