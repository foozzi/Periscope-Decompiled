package o;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import java.util.concurrent.Executor;

public class acw
  extends Service
{
  private Executor byb;
  private final IBinder byc = new if();
  
  public void execute(Runnable paramRunnable)
  {
    this.byb.execute(paramRunnable);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return this.byc;
  }
  
  public void onCreate()
  {
    super.onCreate();
    this.byb = vf.tM();
  }
  
  public class if
    extends Binder
  {
    public if() {}
    
    public acw wQ()
    {
      return acw.this;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acw
 * JD-Core Version:    0.7.0.1
 */