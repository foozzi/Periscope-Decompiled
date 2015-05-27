package o;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;

final class ﬥ
  extends 宀
  implements Handler.Callback
{
  private final long EA;
  private final HashMap<ﬥ.if, ﬥ.ˊ> Ex = new HashMap();
  private final Context Ey;
  private final a Ez;
  private final Handler mHandler;
  
  ﬥ(Context paramContext)
  {
    this.Ey = paramContext.getApplicationContext();
    this.mHandler = new Handler(paramContext.getMainLooper(), this);
    this.Ez = a.ﺕ();
    this.EA = 5000L;
  }
  
  private boolean ˊ(ﬥ.if paramif, ServiceConnection paramServiceConnection, String paramString)
  {
    ﺧ.ʼ(paramServiceConnection, "ServiceConnection must not be null");
    for (;;)
    {
      ﬥ.ˊ localˊ;
      synchronized (this.Ex)
      {
        localˊ = (ﬥ.ˊ)this.Ex.get(paramif);
        if (localˊ == null)
        {
          localˊ = new ﬥ.ˊ(this, paramif);
          localˊ.ˊ(paramServiceConnection, paramString);
          localˊ.ᵕ(paramString);
          this.Ex.put(paramif, localˊ);
          paramif = localˊ;
        }
        else
        {
          this.mHandler.removeMessages(0, localˊ);
          if (localˊ.ˊ(paramServiceConnection)) {
            throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + paramif);
          }
          localˊ.ˊ(paramServiceConnection, paramString);
        }
        switch (localˊ.getState())
        {
        case 1: 
          paramServiceConnection.onServiceConnected(localˊ.getComponentName(), localˊ.getBinder());
          paramif = localˊ;
          break;
        case 2: 
          localˊ.ᵕ(paramString);
          paramif = localˊ;
          boolean bool = paramif.isBound();
          return bool;
        }
      }
      paramif = localˊ;
    }
  }
  
  private void ˋ(ﬥ.if paramif, ServiceConnection paramServiceConnection, String paramString)
  {
    ﺧ.ʼ(paramServiceConnection, "ServiceConnection must not be null");
    synchronized (this.Ex)
    {
      ﬥ.ˊ localˊ = (ﬥ.ˊ)this.Ex.get(paramif);
      if (localˊ == null) {
        throw new IllegalStateException("Nonexistent connection status for service config: " + paramif);
      }
      if (!localˊ.ˊ(paramServiceConnection))
      {
        Log.e("GmsClientSupervisor", "Trying to unbind a GmsServiceConnection that was not bound before. config=" + paramif);
        return;
      }
      localˊ.ˋ(paramServiceConnection, paramString);
      if (localˊ.Ἶ())
      {
        paramif = this.mHandler.obtainMessage(0, localˊ);
        this.mHandler.sendMessageDelayed(paramif, this.EA);
      }
      return;
    }
  }
  
  public boolean handleMessage(Message arg1)
  {
    switch (???.what)
    {
    default: 
      break;
    case 0: 
      ﬥ.ˊ localˊ = (ﬥ.ˊ)???.obj;
      synchronized (this.Ex)
      {
        if (localˊ.Ἶ())
        {
          if (localˊ.isBound()) {
            localˊ.ᵣ("GmsClientSupervisor");
          }
          this.Ex.remove(ﬥ.ˊ.ˊ(localˊ));
        }
      }
      return true;
    }
    return false;
  }
  
  public boolean ˊ(String paramString1, ServiceConnection paramServiceConnection, String paramString2)
  {
    return ˊ(new ﬥ.if(paramString1), paramServiceConnection, paramString2);
  }
  
  public void ˋ(String paramString1, ServiceConnection paramServiceConnection, String paramString2)
  {
    ˋ(new ﬥ.if(paramString1), paramServiceConnection, paramString2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬¥
 * JD-Core Version:    0.7.0.1
 */