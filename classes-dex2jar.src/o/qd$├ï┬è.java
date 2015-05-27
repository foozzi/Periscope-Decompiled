package o;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

final class qd$ˊ
  implements IInterface
{
  private final IBinder Vv;
  
  public qd$ˊ(IBinder paramIBinder)
  {
    this.Vv = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return this.Vv;
  }
  
  public boolean cr()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      localParcel1.writeInt(1);
      this.Vv.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      boolean bool;
      if (i != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    catch (Exception localException)
    {
      pj.cd().ˑ("Fabric", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
      return false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public String getId()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      this.Vv.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    catch (Exception localException)
    {
      pj.cd().ˑ("Fabric", "Could not get parcel from Google Play Service to capture AdvertisingId");
      return null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qd.Ë
 * JD-Core Version:    0.7.0.1
 */