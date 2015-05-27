package o;

import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

public final class bn
{
  private static bv HR;
  
  public static bm ˊ(LatLng paramLatLng)
  {
    try
    {
      paramLatLng = new bm(ѵ().ˋ(paramLatLng));
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      throw new di(paramLatLng);
    }
  }
  
  public static void ˊ(bv parambv)
  {
    HR = (bv)ﺧ.ᔈ(parambv);
  }
  
  private static bv ѵ()
  {
    return (bv)ﺧ.ʼ(HR, "CameraUpdateFactory is not initialized");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bn
 * JD-Core Version:    0.7.0.1
 */