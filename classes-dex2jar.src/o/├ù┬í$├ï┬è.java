package o;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.io.IOException;

@SuppressLint({"HandlerLeak"})
final class ס$ˊ
  extends Handler
  implements Runnable
{
  private final ס.ˋ AM;
  private final ס.if AN;
  private final int AO;
  private volatile Thread AP;
  
  public ס$ˊ(ס paramס, Looper paramLooper, ס.ˋ paramˋ, ס.if paramif, int paramInt)
  {
    super(paramLooper);
    this.AM = paramˋ;
    this.AN = paramif;
    this.AO = paramInt;
  }
  
  private void Ƴ()
  {
    ס.ˊ(this.AQ, false);
    ס.ˊ(this.AQ, null);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 2) {
      throw ((Error)paramMessage.obj);
    }
    Ƴ();
    if (this.AM.ก())
    {
      this.AN.ˋ(this.AM);
      return;
    }
    switch (paramMessage.what)
    {
    default: 
      return;
    case 0: 
      this.AN.ˊ(this.AM);
      return;
    }
    this.AN.ˊ(this.AM, (IOException)paramMessage.obj);
  }
  
  public void quit()
  {
    this.AM.ঽ();
    if (this.AP != null) {
      this.AP.interrupt();
    }
  }
  
  public void run()
  {
    try
    {
      this.AP = Thread.currentThread();
      if (this.AO > 0) {
        Thread.sleep(this.AO);
      }
      if (!this.AM.ก()) {
        this.AM.კ();
      }
      sendEmptyMessage(0);
      return;
    }
    catch (IOException localIOException)
    {
      obtainMessage(1, localIOException).sendToTarget();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      ړ.ᐟ(this.AM.ก());
      sendEmptyMessage(0);
      return;
    }
    catch (Exception localException)
    {
      Log.e("LoadTask", "Unexpected exception loading stream", localException);
      obtainMessage(1, new ס.ˎ(localException)).sendToTarget();
      return;
    }
    catch (Error localError)
    {
      Log.e("LoadTask", "Unexpected error loading stream", localError);
      obtainMessage(2, localError).sendToTarget();
      throw localError;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.×¡.Ë
 * JD-Core Version:    0.7.0.1
 */