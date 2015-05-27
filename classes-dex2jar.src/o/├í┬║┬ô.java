package o;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;

public class ẓ
  extends בֿ.if
{
  private Account Cc;
  int DE;
  private Context mContext;
  
  public static Account ˎ(בֿ paramבֿ)
  {
    if (paramבֿ != null)
    {
      long l = Binder.clearCallingIdentity();
      try
      {
        paramבֿ = paramבֿ.ᒱ();
        return paramבֿ;
      }
      catch (RemoteException paramבֿ)
      {
        Log.w("AccountAccessor", "Remote account accessor probably died");
        return null;
      }
      finally
      {
        Binder.restoreCallingIdentity(l);
      }
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ẓ)) {
      return false;
    }
    return this.Cc.equals(((ẓ)paramObject).Cc);
  }
  
  public Account ᒱ()
  {
    int i = Binder.getCallingUid();
    if (i == this.DE) {
      return this.Cc;
    }
    if (ძ.ᐝ(this.mContext, i))
    {
      this.DE = i;
      return this.Cc;
    }
    throw new SecurityException("Caller is not GooglePlayServices");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áº
 * JD-Core Version:    0.7.0.1
 */