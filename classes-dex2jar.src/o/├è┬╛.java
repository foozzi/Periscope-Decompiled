package o;

import android.os.Handler;
import android.os.Message;

class ʾ
  extends Handler
{
  ʾ(ι paramι) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      break;
    case 1: 
      if (!this.יִ.mStopped) {
        return;
      }
      this.יִ.doReallyStop(false);
      return;
    case 2: 
      this.יִ.onResumeFragments();
      this.יִ.mFragments.ʻ();
      return;
    }
    super.handleMessage(paramMessage);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê¾
 * JD-Core Version:    0.7.0.1
 */