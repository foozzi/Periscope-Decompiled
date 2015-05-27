package o;

import android.content.Context;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;

public abstract class rw<T>
  implements sd
{
  protected final ScheduledExecutorService Rv;
  protected se<T> XB;
  protected final Context dV;
  
  public rw(Context paramContext, se<T> paramse, ru paramru, ScheduledExecutorService paramScheduledExecutorService)
  {
    this.dV = paramContext.getApplicationContext();
    this.Rv = paramScheduledExecutorService;
    this.XB = paramse;
    paramru.ˊ(this);
  }
  
  public void disable()
  {
    ˎ(new sa(this));
  }
  
  protected void ˋ(Runnable paramRunnable)
  {
    try
    {
      this.Rv.submit(paramRunnable).get();
      return;
    }
    catch (Exception paramRunnable)
    {
      qh.ˊ(this.dV, "Failed to run events task", paramRunnable);
    }
  }
  
  public void ˎ(T paramT, boolean paramBoolean)
  {
    ˎ(new rx(this, paramT, paramBoolean));
  }
  
  protected void ˎ(Runnable paramRunnable)
  {
    try
    {
      this.Rv.submit(paramRunnable);
      return;
    }
    catch (Exception paramRunnable)
    {
      qh.ˊ(this.dV, "Failed to submit events task", paramRunnable);
    }
  }
  
  public void ᔾ(String paramString)
  {
    ˎ(new rz(this));
  }
  
  public void ᵌ(T paramT)
  {
    ˋ(new ry(this, paramT));
  }
  
  protected abstract se<T> ẗ();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.rw
 * JD-Core Version:    0.7.0.1
 */