package o;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.zzuw;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class ar
  implements Runnable
{
  ar(aq.if paramif, List paramList, String paramString, ao paramao) {}
  
  public void run()
  {
    try
    {
      Object localObject = aq.if.ˊ(this.Ha);
      Set localSet = Collections.unmodifiableSet(new HashSet(this.GX));
      localObject = ((ᒴ.ˎ)localObject).ˊ(this.GY, localSet);
      localObject = new zzuw(((ᒴ.ˎ.if)localObject).ন(), ((ᒴ.ˎ.if)localObject).প());
      this.GZ.ˊ((zzuw)localObject);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("SignInClientImpl", "RemoteException thrown when processing checkServerAuthorization callback", localRemoteException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ar
 * JD-Core Version:    0.7.0.1
 */