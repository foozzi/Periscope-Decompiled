package o;

import android.os.RemoteException;

public final class dg
{
  private static dp IE;
  
  public static df Ɨ(int paramInt)
  {
    try
    {
      df localdf = new df(Ῡ().Ȋ(paramInt));
      return localdf;
    }
    catch (RemoteException localRemoteException)
    {
      throw new di(localRemoteException);
    }
  }
  
  public static void ˊ(dp paramdp)
  {
    if (IE != null) {
      return;
    }
    IE = (dp)ﺧ.ᔈ(paramdp);
  }
  
  private static dp Ῡ()
  {
    return (dp)ﺧ.ʼ(IE, "IBitmapDescriptorFactory is not initialized");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.dg
 * JD-Core Version:    0.7.0.1
 */