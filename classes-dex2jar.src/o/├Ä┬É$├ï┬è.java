package o;

import android.os.Handler.Callback;
import android.os.Message;

class ΐ$ˊ
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == paramMessage.what) || (2 == paramMessage.what))
    {
      ΐ localΐ = (ΐ)paramMessage.obj;
      if (1 == paramMessage.what) {
        ΐ.ˊ(localΐ);
      } else {
        ΐ.ˋ(localΐ);
      }
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î.Ë
 * JD-Core Version:    0.7.0.1
 */