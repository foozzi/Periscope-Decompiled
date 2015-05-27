package o;

import android.os.RemoteException;

public final class dh
{
  private final dt Jg;
  
  public dh(dt paramdt)
  {
    this.Jg = ((dt)ﺧ.ᔈ(paramdt));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof dh)) {
      return false;
    }
    try
    {
      boolean bool = this.Jg.ʽ(((dh)paramObject).Jg);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new di(paramObject);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = this.Jg.ﮐ();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new di(localRemoteException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.dh
 * JD-Core Version:    0.7.0.1
 */