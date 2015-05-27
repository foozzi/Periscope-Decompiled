package o;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

class rb
  extends qz.ˏ<Params, Result>
{
  rb(qz paramqz)
  {
    super(null);
  }
  
  public Result call()
  {
    qz.ˊ(this.WQ).set(true);
    Process.setThreadPriority(10);
    return qz.ˊ(this.WQ, this.WQ.doInBackground(this.Xb));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.rb
 * JD-Core Version:    0.7.0.1
 */