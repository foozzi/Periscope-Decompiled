package o;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.zzaa;

public abstract class ﺕ$if
  extends Binder
  implements ﺕ
{
  public ﺕ$if()
  {
    attachInterface(this, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
  }
  
  public static ﺕ ʻ(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof ﺕ))) {
      return (ﺕ)localIInterface;
    }
    return new ﺕ.if.if(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      break;
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.common.internal.IResolveAccountCallbacks");
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (zzaa)zzaa.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˋ(paramParcel1);
      paramParcel2.writeNoException();
      return true;
    }
    return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº.if
 * JD-Core Version:    0.7.0.1
 */