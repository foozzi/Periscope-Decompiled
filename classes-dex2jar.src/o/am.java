package o;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Scope;
import java.util.List;

public abstract interface am
  extends IInterface
{
  public abstract void ˊ(String paramString1, String paramString2, ao paramao);
  
  public abstract void ˊ(String paramString, List<Scope> paramList, ao paramao);
  
  public static abstract class if
    extends Binder
    implements am
  {
    public if()
    {
      attachInterface(this, "com.google.android.gms.signin.internal.IOfflineAccessCallbacks");
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
        paramParcel2.writeString("com.google.android.gms.signin.internal.IOfflineAccessCallbacks");
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.IOfflineAccessCallbacks");
        ˊ(paramParcel1.readString(), paramParcel1.createTypedArrayList(Scope.CREATOR), ao.if.ˈ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.IOfflineAccessCallbacks");
        ˊ(paramParcel1.readString(), paramParcel1.readString(), ao.if.ˈ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      }
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.am
 * JD-Core Version:    0.7.0.1
 */