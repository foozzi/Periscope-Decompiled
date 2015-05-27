package o;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.atomic.AtomicReference;

public abstract class ᖧ$if<R extends ᒹ, A extends ᒰ.ˊ>
  extends ᒏ<R>
  implements ᖧ.ˊ<R>, ᖨ.ᐝ<A>
{
  private AtomicReference<ᖨ.ˏ> CA = new AtomicReference();
  private final ᒰ.ˎ<A> Ca;
  
  protected ᖧ$if(ᒰ.ˎ<A> paramˎ, ᒴ paramᒴ)
  {
    super(((ᒴ)ﺧ.ʼ(paramᒴ, "GoogleApiClient must not be null")).getLooper());
    this.Ca = ((ᒰ.ˎ)ﺧ.ᔈ(paramˎ));
  }
  
  private void ˊ(RemoteException paramRemoteException)
  {
    ˎ(new Status(8, paramRemoteException.getLocalizedMessage(), null));
  }
  
  public final void ˊ(A paramA)
  {
    try
    {
      ˋ(paramA);
      return;
    }
    catch (DeadObjectException paramA)
    {
      ˊ(paramA);
      throw paramA;
    }
    catch (RemoteException paramA)
    {
      ˊ(paramA);
    }
  }
  
  public void ˊ(ᖨ.ˏ paramˏ)
  {
    this.CA.set(paramˏ);
  }
  
  protected abstract void ˋ(A paramA);
  
  public final void ˎ(Status paramStatus)
  {
    boolean bool;
    if (!paramStatus.չ()) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˏ(bool, "Failed result must not be success");
    ˊ(ˊ(paramStatus));
  }
  
  protected void ت()
  {
    ᖨ.ˏ localˏ = (ᖨ.ˏ)this.CA.getAndSet(null);
    if (localˏ != null) {
      localˏ.ˋ(this);
    }
  }
  
  public final ᒰ.ˎ<A> ܫ()
  {
    return this.Ca;
  }
  
  public int ท()
  {
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á§.if
 * JD-Core Version:    0.7.0.1
 */