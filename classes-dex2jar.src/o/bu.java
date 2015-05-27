package o;

import android.os.RemoteException;

public final class bu
{
  private final ce Iz;
  
  bu(ce paramce)
  {
    this.Iz = paramce;
  }
  
  public void ː(boolean paramBoolean)
  {
    try
    {
      this.Iz.ː(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new di(localRemoteException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bu
 * JD-Core Version:    0.7.0.1
 */