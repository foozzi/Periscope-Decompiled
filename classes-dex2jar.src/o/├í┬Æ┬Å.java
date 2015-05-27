package o;

import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;

public abstract class ᒏ<R extends ᒹ>
  implements ᒵ<R>
{
  private final Object BP = new Object();
  protected final ᒏ.if<R> BQ;
  private final CountDownLatch BR = new CountDownLatch(1);
  private final ArrayList<ᒵ.if> BS = new ArrayList();
  private ᓙ<R> BT;
  private volatile R BU;
  private volatile boolean BV;
  private boolean BW;
  private boolean BX;
  private ᴩ BY;
  
  protected ᒏ(Looper paramLooper)
  {
    this.BQ = new ᒏ.if(paramLooper);
  }
  
  private void ˋ(R paramR)
  {
    this.BU = paramR;
    this.BY = null;
    this.BR.countDown();
    paramR = this.BU.হ();
    if (this.BT != null)
    {
      this.BQ.ړ();
      if (!this.BW) {
        this.BQ.ˊ(this.BT, ٺ());
      }
    }
    Iterator localIterator = this.BS.iterator();
    while (localIterator.hasNext()) {
      ((ᒵ.if)localIterator.next()).ˋ(paramR);
    }
    this.BS.clear();
  }
  
  static void ˎ(ᒹ paramᒹ)
  {
    if ((paramᒹ instanceof ᒸ)) {
      try
      {
        ((ᒸ)paramᒹ).release();
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        Log.w("AbstractPendingResult", "Unable to release " + paramᒹ, localRuntimeException);
      }
    }
  }
  
  private R ٺ()
  {
    for (;;)
    {
      synchronized (this.BP)
      {
        if (this.BV) {
          break label70;
        }
        bool = true;
        ﺧ.ˎ(bool, "Result has already been consumed.");
        ﺧ.ˎ(ﺓ(), "Result is not ready.");
        ᒹ localᒹ = this.BU;
        this.BU = null;
        this.BT = null;
        this.BV = true;
      }
      ت();
      return ?;
      label70:
      boolean bool = false;
    }
  }
  
  public void cancel()
  {
    synchronized (this.BP)
    {
      if (!this.BW)
      {
        boolean bool = this.BV;
        if (!bool) {}
      }
      else
      {
        return;
      }
      ᴩ localᴩ = this.BY;
      if (localᴩ != null) {
        try
        {
          this.BY.cancel();
        }
        catch (RemoteException localRemoteException) {}
      }
      ˎ(this.BU);
      this.BT = null;
      this.BW = true;
      ˋ(ˊ(Status.Cy));
      return;
    }
  }
  
  public boolean isCanceled()
  {
    synchronized (this.BP)
    {
      boolean bool = this.BW;
      return bool;
    }
  }
  
  protected abstract R ˊ(Status paramStatus);
  
  public final void ˊ(R paramR)
  {
    for (;;)
    {
      synchronized (this.BP)
      {
        if ((this.BX) || (this.BW))
        {
          ˎ(paramR);
          return;
        }
        if (!ﺓ())
        {
          bool = true;
          ﺧ.ˎ(bool, "Results have already been set");
          if (this.BV) {
            break label82;
          }
          bool = true;
          ﺧ.ˎ(bool, "Result has already been consumed");
          ˋ(paramR);
          return;
        }
      }
      boolean bool = false;
      continue;
      label82:
      bool = false;
    }
  }
  
  public final void ˊ(ᓙ<R> paramᓙ)
  {
    boolean bool;
    if (!this.BV) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˎ(bool, "Result has already been consumed.");
    synchronized (this.BP)
    {
      bool = isCanceled();
      if (bool) {
        return;
      }
      if (ﺓ()) {
        this.BQ.ˊ(paramᓙ, ٺ());
      } else {
        this.BT = paramᓙ;
      }
      return;
    }
  }
  
  protected void ت() {}
  
  void ٻ()
  {
    synchronized (this.BP)
    {
      if (!ﺓ())
      {
        ˊ(ˊ(Status.Cx));
        this.BX = true;
      }
      return;
    }
  }
  
  public final boolean ﺓ()
  {
    return this.BR.getCount() == 0L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */