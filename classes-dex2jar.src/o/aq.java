package o;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.internal.zzut;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public class aq
  extends ヾ<ao>
  implements ah
{
  private final ai DM;
  private Integer DN;
  private final ぃ DY;
  private final ExecutorService GW;
  
  public aq(Context paramContext, Looper paramLooper, ぃ paramぃ, ai paramai, ᒴ.ˊ paramˊ, ᒴ.ˋ paramˋ, ExecutorService paramExecutorService)
  {
    super(paramContext, paramLooper, 44, paramˊ, paramˋ, paramぃ);
    this.DY = paramぃ;
    this.DM = paramai;
    this.DN = paramぃ.ᘅ();
    this.GW = paramExecutorService;
  }
  
  public static Bundle ˊ(ai paramai, Integer paramInteger, ExecutorService paramExecutorService)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", paramai.Ĵ());
    localBundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", paramai.Ł());
    localBundle.putString("com.google.android.gms.signin.internal.serverClientId", paramai.ō());
    if (paramai.ţ() != null) {
      localBundle.putParcelable("com.google.android.gms.signin.internal.signInCallbacks", new BinderWrapper(new if(paramai, paramExecutorService).asBinder()));
    }
    if (paramInteger != null) {
      localBundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", paramInteger.intValue());
    }
    return localBundle;
  }
  
  protected ao ˉ(IBinder paramIBinder)
  {
    return ao.if.ˈ(paramIBinder);
  }
  
  public void ˊ(בֿ paramבֿ, Set<Scope> paramSet, an paraman)
  {
    ﺧ.ʼ(paraman, "Expecting a valid ISignInCallbacks");
    try
    {
      ((ao)ᴝ()).ˊ(new zzc(paramבֿ, paramSet), paraman);
      return;
    }
    catch (RemoteException paramבֿ)
    {
      Log.w("SignInClientImpl", "Remote service probably died when authAccount is called");
      try
      {
        paraman.ˊ(new ConnectionResult(8, null), new zzut());
        return;
      }
      catch (RemoteException paramבֿ)
      {
        Log.wtf("SignInClientImpl", "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException.");
      }
    }
  }
  
  public void ˊ(בֿ paramבֿ, boolean paramBoolean)
  {
    try
    {
      ((ao)ᴝ()).ˊ(paramבֿ, this.DN.intValue(), paramBoolean);
      return;
    }
    catch (RemoteException paramבֿ)
    {
      Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
    }
  }
  
  public void ˊ(ﺕ paramﺕ)
  {
    ﺧ.ʼ(paramﺕ, "Expecting a valid IResolveAccountCallbacks");
    try
    {
      Account localAccount = this.DY.ᖬ();
      ((ao)ᴝ()).ˊ(new zzy(localAccount, this.DN.intValue()), paramﺕ);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("SignInClientImpl", "Remote service probably died when resolveAccount is called");
      try
      {
        paramﺕ.ˋ(new zzaa(8));
        return;
      }
      catch (RemoteException paramﺕ)
      {
        Log.wtf("SignInClientImpl", "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException.");
      }
    }
  }
  
  protected String ᘣ()
  {
    return "com.google.android.gms.signin.service.START";
  }
  
  protected String ᘦ()
  {
    return "com.google.android.gms.signin.internal.ISignInService";
  }
  
  protected Bundle ᴉ()
  {
    Bundle localBundle = ˊ(this.DM, this.DY.ᘅ(), this.GW);
    String str = this.DY.ᖾ();
    if (!getContext().getPackageName().equals(str)) {
      localBundle.putString("com.google.android.gms.signin.internal.realClientPackageName", this.DY.ᖾ());
    }
    return localBundle;
  }
  
  public void ﾓ()
  {
    try
    {
      ((ao)ᴝ()).ﭕ(this.DN.intValue());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
    }
  }
  
  static class if
    extends am.if
  {
    private final ai DM;
    private final ExecutorService GW;
    
    public if(ai paramai, ExecutorService paramExecutorService)
    {
      this.DM = paramai;
      this.GW = paramExecutorService;
    }
    
    private ᒴ.ˎ ţ()
    {
      return this.DM.ţ();
    }
    
    public void ˊ(String paramString1, String paramString2, ao paramao)
    {
      this.GW.submit(new as(this, paramString1, paramString2, paramao));
    }
    
    public void ˊ(String paramString, List<Scope> paramList, ao paramao)
    {
      this.GW.submit(new ar(this, paramList, paramString, paramao));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aq
 * JD-Core Version:    0.7.0.1
 */