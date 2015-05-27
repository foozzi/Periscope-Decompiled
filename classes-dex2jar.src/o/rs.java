package o;

import android.content.Context;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class rs<T>
  implements se<T>
{
  protected final ScheduledExecutorService Xr;
  protected final ru<T> Xs;
  protected final AtomicReference<ScheduledFuture<?>> Xt;
  protected volatile int Xu = -1;
  protected final Context dV;
  
  public rs(Context paramContext, ScheduledExecutorService paramScheduledExecutorService, ru<T> paramru)
  {
    this.dV = paramContext;
    this.Xr = paramScheduledExecutorService;
    this.Xs = paramru;
    this.Xt = new AtomicReference();
  }
  
  public void cZ()
  {
    de();
  }
  
  public void da()
  {
    this.Xs.dg();
  }
  
  public void db()
  {
    if (this.Xt.get() != null)
    {
      qh.ᐝ(this.dV, "Cancelling time-based rollover because no events are currently being generated.");
      ((ScheduledFuture)this.Xt.get()).cancel(false);
      this.Xt.set(null);
    }
  }
  
  public boolean dc()
  {
    try
    {
      boolean bool = this.Xs.dc();
      return bool;
    }
    catch (IOException localIOException)
    {
      qh.ˊ(this.dV, "Failed to roll file over.", localIOException);
    }
    return false;
  }
  
  public void dd()
  {
    int i;
    if (this.Xu != -1) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (this.Xt.get() == null) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i != 0) && (j != 0)) {
      ᵌ(this.Xu, this.Xu);
    }
  }
  
  void de()
  {
    sg localsg = Ḭ();
    if (localsg == null)
    {
      qh.ᐝ(this.dV, "skipping files send because we don't yet know the target endpoint");
      return;
    }
    qh.ᐝ(this.dV, "Sending all files");
    int i = 0;
    int j = 0;
    List localList = this.Xs.df();
    for (;;)
    {
      boolean bool;
      try
      {
        qh.ᐝ(this.dV, String.format(Locale.US, "attempt to send batch of %d files", new Object[] { Integer.valueOf(localList.size()) }));
        int k = j;
        i = j;
        if (localList.size() > 0)
        {
          i = j;
          bool = localsg.ʼ(localList);
          k = j;
          if (!bool) {
            break label202;
          }
          i = j;
          k = localList.size() + j;
          i = k;
          this.Xs.ˌ(localList);
          break label202;
          i = k;
          localList = this.Xs.df();
          j = k;
          continue;
        }
        i = k;
      }
      catch (Exception localException)
      {
        qh.ˊ(this.dV, "Failed to send batch of analytics files to server: " + localException.getMessage(), localException);
      }
      if (i == 0) {
        this.Xs.dh();
      }
      return;
      label202:
      if (bool) {}
    }
  }
  
  public void ᒢ(T paramT)
  {
    qh.ᐝ(this.dV, paramT.toString());
    try
    {
      this.Xs.ᖮ(paramT);
    }
    catch (IOException paramT)
    {
      qh.ˊ(this.dV, "Failed to write event.", paramT);
    }
    dd();
  }
  
  protected void ᵌ(int paramInt1, int paramInt2)
  {
    try
    {
      sj localsj = new sj(this.dV, this);
      qh.ᐝ(this.dV, "Scheduling time based file roll over every " + paramInt2 + " seconds");
      this.Xt.set(this.Xr.scheduleAtFixedRate(localsj, paramInt1, paramInt2, TimeUnit.SECONDS));
      return;
    }
    catch (RejectedExecutionException localRejectedExecutionException)
    {
      qh.ˊ(this.dV, "Failed to schedule time based file roll over", localRejectedExecutionException);
    }
  }
  
  protected void ﭙ(int paramInt)
  {
    this.Xu = paramInt;
    ᵌ(0, this.Xu);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.rs
 * JD-Core Version:    0.7.0.1
 */