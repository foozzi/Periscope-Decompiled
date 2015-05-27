package o;

import android.os.RemoteException;
import com.google.android.gms.maps.model.MarkerOptions;

public final class bo
{
  private final bw HS;
  private bu HT;
  
  protected bo(bw parambw)
  {
    this.HS = ((bw)ﺧ.ᔈ(parambw));
  }
  
  public final void clear()
  {
    try
    {
      this.HS.clear();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new di(localRemoteException);
    }
  }
  
  public final void ł(int paramInt)
  {
    try
    {
      this.HS.ł(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new di(localRemoteException);
    }
  }
  
  public final dh ˊ(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = this.HS.ˋ(paramMarkerOptions);
      if (paramMarkerOptions != null)
      {
        paramMarkerOptions = new dh(paramMarkerOptions);
        return paramMarkerOptions;
      }
      return null;
    }
    catch (RemoteException paramMarkerOptions)
    {
      throw new di(paramMarkerOptions);
    }
  }
  
  public final void ˊ(bm parambm)
  {
    try
    {
      this.HS.ˋ(parambm.п());
      return;
    }
    catch (RemoteException parambm)
    {
      throw new di(parambm);
    }
  }
  
  public final void ˊ(if paramif)
  {
    if (paramif == null) {}
    try
    {
      this.HS.ˊ(null);
      break label35;
      this.HS.ˊ(new bp(this, paramif));
      label35:
      return;
    }
    catch (RemoteException paramif)
    {
      throw new di(paramif);
    }
  }
  
  public final bu Ғ()
  {
    try
    {
      if (this.HT == null) {
        this.HT = new bu(this.HS.อ());
      }
      bu localbu = this.HT;
      return localbu;
    }
    catch (RemoteException localRemoteException)
    {
      throw new di(localRemoteException);
    }
  }
  
  public static abstract interface if
  {
    public abstract boolean ˊ(dh paramdh);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bo
 * JD-Core Version:    0.7.0.1
 */