package o;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.location.zzh;

public abstract interface bg
  extends IInterface
{
  public abstract void ˊ(zzh paramzzh);
  
  public static abstract class if
    extends Binder
    implements bg
  {
    public static bg ˍ(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.ILocationResultListener");
      if ((localIInterface != null) && ((localIInterface instanceof bg))) {
        return (bg)localIInterface;
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
        paramParcel2.writeString("com.google.android.gms.location.ILocationResultListener");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.location.ILocationResultListener");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = zzh.CREATOR.ʳ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        ˊ(paramParcel1);
        return true;
      }
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    }
    
    static class if
      implements bg
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
      
      public void ˊ(zzh paramzzh)
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.ILocationResultListener");
          if (paramzzh != null)
          {
            localParcel.writeInt(1);
            paramzzh.writeToParcel(localParcel, 0);
          }
          else
          {
            localParcel.writeInt(0);
          }
          this.EL.transact(1, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bg
 * JD-Core Version:    0.7.0.1
 */