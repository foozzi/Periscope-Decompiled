package o;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract interface cd
  extends IInterface
{
  public abstract void onCreate(Bundle paramBundle);
  
  public abstract void onDestroy();
  
  public abstract void onLowMemory();
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract void onSaveInstanceState(Bundle paramBundle);
  
  public abstract void ˊ(db paramdb);
  
  public abstract ﱟ ᐱ();
  
  public abstract cb ᕃ();
  
  public static abstract class if
    extends Binder
    implements cd
  {
    public static cd י(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
      if ((localIInterface != null) && ((localIInterface instanceof cd))) {
        return (cd)localIInterface;
      }
      return new if(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      switch (paramInt1)
      {
      default: 
        break;
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        paramParcel1 = ᕃ();
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        onCreate(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        onResume();
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        onPause();
        paramParcel2.writeNoException();
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        onDestroy();
        paramParcel2.writeNoException();
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        onLowMemory();
        paramParcel2.writeNoException();
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        onSaveInstanceState(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        else
        {
          paramParcel2.writeInt(0);
        }
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        paramParcel1 = ᐱ();
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        ˊ(db.if.ᕀ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      }
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    }
    
    static class if
      implements cd
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
      
      public void onCreate(Bundle paramBundle)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
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
      
      public void onDestroy()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          this.EL.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onLowMemory()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          this.EL.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onPause()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          this.EL.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onResume()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          this.EL.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onSaveInstanceState(Bundle paramBundle)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0) {
            paramBundle.readFromParcel(localParcel2);
          }
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ˊ(db paramdb)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
            if (paramdb != null)
            {
              paramdb = paramdb.asBinder();
              localParcel1.writeStrongBinder(paramdb);
              this.EL.transact(9, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramdb = null;
        }
      }
      
      public ﱟ ᐱ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          this.EL.transact(8, localParcel1, localParcel2, 0);
          localParcel2.readException();
          ﱟ localﱟ = ﱟ.if.ʼ(localParcel2.readStrongBinder());
          return localﱟ;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public cb ᕃ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          this.EL.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          cb localcb = cb.if.ʹ(localParcel2.readStrongBinder());
          return localcb;
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
 * Qualified Name:     o.cd
 * JD-Core Version:    0.7.0.1
 */