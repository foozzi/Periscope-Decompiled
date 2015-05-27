package o;

import android.content.Context;
import android.os.RemoteException;

public final class bs
{
  public static void ˊ(cj paramcj)
  {
    try
    {
      bn.ˊ(paramcj.ᘥ());
      dg.ˊ(paramcj.ᵆ());
      return;
    }
    catch (RemoteException paramcj)
    {
      throw new di(paramcj);
    }
  }
  
  public static int ﹺ(Context paramContext)
  {
    ﺧ.ᔈ(paramContext);
    try
    {
      paramContext = dd.ｰ(paramContext);
    }
    catch (Ⴡ paramContext)
    {
      return paramContext.tB;
    }
    ˊ(paramContext);
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bs
 * JD-Core Version:    0.7.0.1
 */