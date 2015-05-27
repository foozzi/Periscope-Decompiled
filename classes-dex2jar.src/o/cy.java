package o;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public abstract interface cy
  extends IInterface
{
  public abstract void ˊ(StreetViewPanoramaCamera paramStreetViewPanoramaCamera);
  
  public static abstract class if
    extends Binder
    implements cy
  {
    public if()
    {
      attachInterface(this, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaCameraChangeListener");
    }
    
    public static cy ᐣ(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaCameraChangeListener");
      if ((localIInterface != null) && ((localIInterface instanceof cy))) {
        return (cy)localIInterface;
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
        paramParcel2.writeString("com.google.android.gms.maps.internal.IOnStreetViewPanoramaCameraChangeListener");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaCameraChangeListener");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = StreetViewPanoramaCamera.CREATOR.ᐡ(paramParcel1);
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
      implements cy
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
      
      public void ˊ(StreetViewPanoramaCamera paramStreetViewPanoramaCamera)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnStreetViewPanoramaCameraChangeListener");
          if (paramStreetViewPanoramaCamera != null)
          {
            localParcel1.writeInt(1);
            paramStreetViewPanoramaCamera.writeToParcel(localParcel1, 0);
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
 * Qualified Name:     o.cy
 * JD-Core Version:    0.7.0.1
 */