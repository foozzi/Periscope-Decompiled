package o;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;

public final class ヾ$aux
  extends ヾ<T>.if
{
  public final IBinder Ep;
  
  public ヾ$aux(ヾ paramヾ, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramヾ, paramInt, paramBundle);
    this.Ep = paramIBinder;
  }
  
  protected boolean ᴭ()
  {
    try
    {
      String str = this.Ep.getInterfaceDescriptor();
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("GmsClient", "service probably died");
      return false;
    }
    if (!this.Em.ᘦ().equals(localRemoteException)) {
      return false;
    }
    IInterface localIInterface = this.Em.ˋ(this.Ep);
    if ((localIInterface != null) && (ヾ.ˊ(this.Em, 2, 3, localIInterface)))
    {
      ヾ.ˊ(this.Em).ọ();
      ძ.ᵎ(ヾ.ᐝ(this.Em));
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¾.aux
 * JD-Core Version:    0.7.0.1
 */