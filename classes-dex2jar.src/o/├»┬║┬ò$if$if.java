package o;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzaa;

class ﺕ$if$if
  implements ﺕ
{
  private IBinder EL;
  
  ﺕ$if$if(IBinder paramIBinder)
  {
    this.EL = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return this.EL;
  }
  
  public void ˋ(zzaa paramzzaa)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IResolveAccountCallbacks");
      if (paramzzaa != null)
      {
        localParcel1.writeInt(1);
        paramzzaa.writeToParcel(localParcel1, 0);
      }
      else
      {
        localParcel1.writeInt(0);
      }
      this.EL.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº.if.if
 * JD-Core Version:    0.7.0.1
 */