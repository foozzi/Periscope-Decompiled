package o;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.internal.zzuw;

public abstract interface ao
  extends IInterface
{
  public abstract void ˊ(int paramInt, Account paramAccount, an paraman);
  
  public abstract void ˊ(zzc paramzzc, an paraman);
  
  public abstract void ˊ(zzy paramzzy, ﺕ paramﺕ);
  
  public abstract void ˊ(zzuw paramzzuw);
  
  public abstract void ˊ(בֿ paramבֿ, int paramInt, boolean paramBoolean);
  
  public abstract void ᔈ(boolean paramBoolean);
  
  public abstract void ﭕ(int paramInt);
  
  public static abstract class if
    extends Binder
    implements ao
  {
    public static ao ˈ(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
      if ((localIInterface != null) && ((localIInterface instanceof ao))) {
        return (ao)localIInterface;
      }
      return new if(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      Object localObject;
      boolean bool;
      switch (paramInt1)
      {
      default: 
        break;
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        if (paramParcel1.readInt() != 0) {
          localObject = (zzc)zzc.CREATOR.createFromParcel(paramParcel1);
        } else {
          localObject = null;
        }
        ˊ((zzc)localObject, an.if.ʿ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = (zzuw)zzuw.CREATOR.createFromParcel(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        ˊ(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        if (paramParcel1.readInt() != 0) {
          bool = true;
        } else {
          bool = false;
        }
        ᔈ(bool);
        paramParcel2.writeNoException();
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        if (paramParcel1.readInt() != 0) {
          localObject = (zzy)zzy.CREATOR.createFromParcel(paramParcel1);
        } else {
          localObject = null;
        }
        ˊ((zzy)localObject, ﺕ.if.ʻ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        ﭕ(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        paramInt1 = paramParcel1.readInt();
        if (paramParcel1.readInt() != 0) {
          localObject = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        } else {
          localObject = null;
        }
        ˊ(paramInt1, (Account)localObject, an.if.ʿ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        localObject = בֿ.if.ˎ(paramParcel1.readStrongBinder());
        paramInt1 = paramParcel1.readInt();
        if (paramParcel1.readInt() != 0) {
          bool = true;
        } else {
          bool = false;
        }
        ˊ((בֿ)localObject, paramInt1, bool);
        paramParcel2.writeNoException();
        return true;
      }
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    }
    
    static class if
      implements ao
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
      
      public void ˊ(int paramInt, Account paramAccount, an paraman)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
            localParcel1.writeInt(paramInt);
            if (paramAccount != null)
            {
              localParcel1.writeInt(1);
              paramAccount.writeToParcel(localParcel1, 0);
            }
            else
            {
              localParcel1.writeInt(0);
            }
            if (paraman != null)
            {
              paramAccount = paraman.asBinder();
              localParcel1.writeStrongBinder(paramAccount);
              this.EL.transact(8, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramAccount = null;
        }
      }
      
      public void ˊ(zzc paramzzc, an paraman)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
            if (paramzzc != null)
            {
              localParcel1.writeInt(1);
              paramzzc.writeToParcel(localParcel1, 0);
            }
            else
            {
              localParcel1.writeInt(0);
            }
            if (paraman != null)
            {
              paramzzc = paraman.asBinder();
              localParcel1.writeStrongBinder(paramzzc);
              this.EL.transact(2, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramzzc = null;
        }
      }
      
      public void ˊ(zzy paramzzy, ﺕ paramﺕ)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
            if (paramzzy != null)
            {
              localParcel1.writeInt(1);
              paramzzy.writeToParcel(localParcel1, 0);
            }
            else
            {
              localParcel1.writeInt(0);
            }
            if (paramﺕ != null)
            {
              paramzzy = paramﺕ.asBinder();
              localParcel1.writeStrongBinder(paramzzy);
              this.EL.transact(5, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramzzy = null;
        }
      }
      
      public void ˊ(zzuw paramzzuw)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
          if (paramzzuw != null)
          {
            localParcel1.writeInt(1);
            paramzzuw.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
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
      
      public void ˊ(בֿ paramבֿ, int paramInt, boolean paramBoolean)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
            if (paramבֿ != null)
            {
              paramבֿ = paramבֿ.asBinder();
              localParcel1.writeStrongBinder(paramבֿ);
              localParcel1.writeInt(paramInt);
              if (!paramBoolean) {
                break label109;
              }
              paramInt = 1;
              localParcel1.writeInt(paramInt);
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
          paramבֿ = null;
          continue;
          label109:
          paramInt = 0;
        }
      }
      
      public void ᔈ(boolean paramBoolean)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
            if (paramBoolean)
            {
              i = 1;
              localParcel1.writeInt(i);
              this.EL.transact(4, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          int i = 0;
        }
      }
      
      public void ﭕ(int paramInt)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
          localParcel1.writeInt(paramInt);
          this.EL.transact(7, localParcel1, localParcel2, 0);
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
 * Qualified Name:     o.ao
 * JD-Core Version:    0.7.0.1
 */