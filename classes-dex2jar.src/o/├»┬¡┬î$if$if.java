package o;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class בֿ$if$if
  implements בֿ
{
  private IBinder EL;
  
  בֿ$if$if(IBinder paramIBinder)
  {
    this.EL = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return this.EL;
  }
  
  public Account ᒱ()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IAccountAccessor");
      this.EL.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      Account localAccount;
      if (localParcel2.readInt() != 0) {
        localAccount = (Account)Account.CREATOR.createFromParcel(localParcel2);
      } else {
        localAccount = null;
      }
      return localAccount;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­.if.if
 * JD-Core Version:    0.7.0.1
 */