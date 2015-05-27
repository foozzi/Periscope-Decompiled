package o;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.common.internal.zzi;

class ﭞ$if$if
  implements ﭞ
{
  private IBinder EL;
  
  ﭞ$if$if(IBinder paramIBinder)
  {
    this.EL = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return this.EL;
  }
  
  public void ʻ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(31, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʻ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(11, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʼ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(32, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʼ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(12, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʽ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(35, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʽ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(13, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʾ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(42, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʾ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(16, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʿ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(44, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ʿ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(17, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˈ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(45, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˈ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(18, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˉ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(23, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
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
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
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
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString, IBinder paramIBinder, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          localParcel1.writeStrongBinder(paramIBinder);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(19, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          this.EL.transact(34, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeString(paramString3);
          localParcel1.writeStringArray(paramArrayOfString);
          this.EL.transact(33, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeStringArray(paramArrayOfString);
          this.EL.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeStringArray(paramArrayOfString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(30, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeStringArray(paramArrayOfString);
          localParcel1.writeString(paramString3);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, IBinder paramIBinder, String paramString4, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeStringArray(paramArrayOfString);
          localParcel1.writeString(paramString3);
          localParcel1.writeStrongBinder(paramIBinder);
          localParcel1.writeString(paramString4);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
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
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, int paramInt, String paramString1, String[] paramArrayOfString, String paramString2, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString1);
          localParcel1.writeStringArray(paramArrayOfString);
          localParcel1.writeString(paramString2);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(20, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, zzae paramzzae)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          if (paramzzae != null)
          {
            localParcel1.writeInt(1);
            paramzzae.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(47, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˊ(ﭒ paramﭒ, zzi paramzzi)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          if (paramzzi != null)
          {
            localParcel1.writeInt(1);
            paramzzi.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(46, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˋ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(21, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˋ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
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
      paramﭒ = null;
    }
  }
  
  public void ˌ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(25, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˍ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(27, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˎ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(22, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˎ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˏ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(24, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˏ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
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
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ˑ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(37, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ͺ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(36, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ͺ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(14, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ـ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(38, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ᐝ(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(26, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ᐝ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
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
      paramﭒ = null;
    }
  }
  
  public void ᐧ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(41, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ᐨ(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(43, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ι(ﭒ paramﭒ, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.EL.transact(40, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ι(ﭒ paramﭒ, int paramInt, String paramString, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (paramﭒ != null)
        {
          paramﭒ = paramﭒ.asBinder();
          localParcel1.writeStrongBinder(paramﭒ);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(15, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramﭒ = null;
    }
  }
  
  public void ℷ()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      this.EL.transact(28, localParcel1, localParcel2, 0);
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
 * Qualified Name:     o.ï­.if.if
 * JD-Core Version:    0.7.0.1
 */