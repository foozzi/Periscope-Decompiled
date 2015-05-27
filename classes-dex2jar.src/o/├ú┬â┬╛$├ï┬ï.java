package o;

import android.util.Log;
import java.util.ArrayList;

public abstract class ヾ$ˋ<TListener>
{
  private TListener Dq;
  private boolean En;
  
  public ヾ$ˋ(TListener paramTListener)
  {
    Object localObject;
    this.Dq = localObject;
    this.En = false;
  }
  
  public void unregister()
  {
    ẏ();
    synchronized (ヾ.ˋ(this.Em))
    {
      ヾ.ˋ(this.Em).remove(this);
      return;
    }
  }
  
  protected abstract void ᒽ(TListener paramTListener);
  
  protected abstract void Ṭ();
  
  public void ṯ()
  {
    try
    {
      Object localObject1 = this.Dq;
      if (this.En) {
        Log.w("GmsClient", "Callback proxy " + this + " being reused. This is not safe.");
      }
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
    if (localObject2 != null) {
      try
      {
        ᒽ(localObject2);
      }
      catch (RuntimeException localRuntimeException)
      {
        Ṭ();
        throw localRuntimeException;
      }
    } else {
      Ṭ();
    }
    try
    {
      this.En = true;
    }
    finally
    {
      localObject3 = finally;
      throw localObject3;
    }
    unregister();
  }
  
  public void ẏ()
  {
    try
    {
      this.Dq = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¾.Ë
 * JD-Core Version:    0.7.0.1
 */