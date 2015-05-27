package o;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.location.LocationSettingsResult;

public abstract interface v
  extends IInterface
{
  public abstract void ˊ(LocationSettingsResult paramLocationSettingsResult);
  
  public static abstract class if
    extends Binder
    implements v
  {
    public if()
    {
      attachInterface(this, "com.google.android.gms.location.internal.ISettingsCallbacks");
    }
    
    public static v ʾ(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.ISettingsCallbacks");
      if ((localIInterface != null) && ((localIInterface instanceof v))) {
        return (v)localIInterface;
      }
      return new if(paramIBinder);
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
        paramParcel2.writeString("com.google.android.gms.location.internal.ISettingsCallbacks");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.ISettingsCallbacks");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = LocationSettingsResult.CREATOR.ⁱ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        ˊ(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    }
    
    static class if
      implements v
    {
      private IBinder EL;
      
      if(IBinder paramIBinder)
      {
        this.EL = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.EL;
      }
      
      public void ˊ(LocationSettingsResult paramLocationSettingsResult)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.ISettingsCallbacks");
          if (paramLocationSettingsResult != null)
          {
            localParcel1.writeInt(1);
            paramLocationSettingsResult.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(1, localParcel1, localParcel2, 0);
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
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.v
 * JD-Core Version:    0.7.0.1
 */