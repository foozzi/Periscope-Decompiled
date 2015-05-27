package o;

import android.os.Handler.Callback;
import android.os.Message;

class ܖ$if
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      ((ڔ)paramMessage.obj).recycle();
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü.if
 * JD-Core Version:    0.7.0.1
 */