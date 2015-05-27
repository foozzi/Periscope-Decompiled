package o;

import android.os.Handler.Callback;
import android.os.Message;

class ｪ$ˋ
  implements Handler.Callback
{
  private ｪ$ˋ(ｪ paramｪ) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      paramMessage = (ｪ.if)paramMessage.obj;
      this.lc.ˊ(paramMessage);
      return true;
    }
    if (paramMessage.what == 2) {
      ᓲ.ˎ((ｪ.if)paramMessage.obj);
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½ª.Ë
 * JD-Core Version:    0.7.0.1
 */