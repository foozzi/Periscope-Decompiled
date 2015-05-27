package o;

import android.os.RemoteException;
import android.util.Log;

class as
  implements Runnable
{
  as(aq.if paramif, String paramString1, String paramString2, ao paramao) {}
  
  public void run()
  {
    try
    {
      boolean bool = aq.if.ˊ(this.Ha).ʽ(this.GY, this.Hb);
      this.GZ.ᔈ(bool);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("SignInClientImpl", "RemoteException thrown when processing uploadServerAuthCode callback", localRemoteException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.as
 * JD-Core Version:    0.7.0.1
 */