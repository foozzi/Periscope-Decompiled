package o;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class ܖ
{
  private final Handler handler = new Handler(Looper.getMainLooper(), new ܖ.if(null));
  private boolean ik;
  
  public void ͺ(ڔ<?> paramڔ)
  {
    
    if (this.ik)
    {
      this.handler.obtainMessage(1, paramڔ).sendToTarget();
      return;
    }
    this.ik = true;
    paramڔ.recycle();
    this.ik = false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü
 * JD-Core Version:    0.7.0.1
 */