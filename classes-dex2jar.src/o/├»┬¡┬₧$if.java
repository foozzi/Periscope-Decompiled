package o;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.common.internal.zzi;

public abstract class ﭞ$if
  extends Binder
  implements ﭞ
{
  public static ﭞ ᐝ(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
    if ((localIInterface != null) && ((localIInterface instanceof ﭞ))) {
      return (ﭞ)localIInterface;
    }
    return new ﭞ.if.if(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    ﭒ localﭒ;
    String str1;
    Object localObject1;
    Object localObject2;
    String str2;
    switch (paramInt1)
    {
    default: 
      break;
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      localObject1 = paramParcel1.readString();
      localObject2 = paramParcel1.createStringArray();
      str2 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˊ(localﭒ, paramInt1, str1, (String)localObject1, (String[])localObject2, str2, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˊ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˊ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˊ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˋ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˎ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˏ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ᐝ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 9: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      localObject1 = paramParcel1.readString();
      localObject2 = paramParcel1.createStringArray();
      str2 = paramParcel1.readString();
      IBinder localIBinder = paramParcel1.readStrongBinder();
      String str3 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˊ(localﭒ, paramInt1, str1, (String)localObject1, (String[])localObject2, str2, localIBinder, str3, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 10: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˊ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      return true;
    case 11: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ʻ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 12: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ʼ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 13: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ʽ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 14: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ͺ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 15: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ι(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 16: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ʾ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 17: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ʿ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 18: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˈ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 19: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      localObject1 = paramParcel1.readStrongBinder();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˊ(localﭒ, paramInt1, str1, (IBinder)localObject1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 20: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      localObject1 = paramParcel1.createStringArray();
      localObject2 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˊ(localﭒ, paramInt1, str1, (String[])localObject1, (String)localObject2, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 21: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˋ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 22: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˎ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 23: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˉ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 24: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˏ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 25: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˌ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 26: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ᐝ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 27: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˍ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 28: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ℷ();
      paramParcel2.writeNoException();
      return true;
    case 30: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      localObject1 = paramParcel1.readString();
      localObject2 = paramParcel1.createStringArray();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˊ(localﭒ, paramInt1, str1, (String)localObject1, (String[])localObject2, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 31: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ʻ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 32: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ʼ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 33: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˊ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      return true;
    case 34: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˊ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 35: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ʽ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 36: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ͺ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 37: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˑ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 38: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ـ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 40: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ι(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 41: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ᐧ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 42: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ʾ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 43: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ᐨ(localﭒ, paramInt1, str1, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 44: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ʿ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 45: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      ˈ(ﭒ.if.ˏ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 46: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (zzi)zzi.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˊ(localﭒ, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    case 47: 
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localﭒ = ﭒ.if.ˏ(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (zzae)zzae.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      ˊ(localﭒ, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    }
    return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­.if
 * JD-Core Version:    0.7.0.1
 */