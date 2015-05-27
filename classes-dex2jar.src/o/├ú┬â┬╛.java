package o;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.common.internal.zzi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class ヾ<T extends IInterface>
  implements ᒰ.ˊ, 乀.if
{
  public static final String[] Ek = { "service_esmobile", "service_googleme" };
  private final 乀 CD;
  private final List<String> CV;
  private final Account Cc;
  private final Looper Cn;
  private final ぃ DY;
  private final 宀 DZ;
  private final Object Ea = new Object();
  private ﭞ Eb;
  private boolean Ec = false;
  private ᒴ.ˏ Ed;
  private T Ee;
  private final ArrayList<ヾ<T>.ˋ<?>> Ef = new ArrayList();
  private ヾ<T>.ˏ Eg;
  private int Eh = 1;
  boolean Ei = false;
  private final int Ej;
  private final Context mContext;
  final Handler mHandler;
  
  @Deprecated
  protected ヾ(Context paramContext, Looper paramLooper, int paramInt, ᒴ.ˊ paramˊ, ᒴ.ˋ paramˋ)
  {
    this.mContext = ((Context)ﺧ.ᔈ(paramContext));
    this.Cn = ((Looper)ﺧ.ʼ(paramLooper, "Looper must not be null"));
    this.DZ = 宀.ᵢ(paramContext);
    this.CD = new 乀(paramLooper, this);
    this.mHandler = new ヾ.ˊ(this, paramLooper);
    this.Ej = paramInt;
    this.Cc = null;
    this.CV = null;
    this.DY = new ᒴ.if(paramContext).ও();
    ˊ((ᒴ.ˊ)ﺧ.ᔈ(paramˊ));
    ˊ((ᒴ.ˋ)ﺧ.ᔈ(paramˋ));
  }
  
  protected ヾ(Context paramContext, Looper paramLooper, int paramInt, ᒴ.ˊ paramˊ, ᒴ.ˋ paramˋ, ぃ paramぃ)
  {
    this(paramContext, paramLooper, 宀.ᵢ(paramContext), paramInt, paramぃ, paramˊ, paramˋ);
  }
  
  protected ヾ(Context paramContext, Looper paramLooper, 宀 param宀, int paramInt, ぃ paramぃ)
  {
    this.mContext = ((Context)ﺧ.ʼ(paramContext, "Context must not be null"));
    this.Cn = ((Looper)ﺧ.ʼ(paramLooper, "Looper must not be null"));
    this.DZ = ((宀)ﺧ.ʼ(param宀, "Supervisor must not be null"));
    this.CD = new 乀(paramLooper, this);
    this.mHandler = new ヾ.ˊ(this, paramLooper);
    this.Ej = paramInt;
    this.DY = ((ぃ)ﺧ.ᔈ(paramぃ));
    this.Cc = paramぃ.ᒱ();
    this.CV = ͺ(paramぃ.ᖽ());
  }
  
  protected ヾ(Context paramContext, Looper paramLooper, 宀 param宀, int paramInt, ぃ paramぃ, ᒴ.ˊ paramˊ, ᒴ.ˋ paramˋ)
  {
    this(paramContext, paramLooper, param宀, paramInt, paramぃ);
    ˊ((ᒴ.ˊ)ﺧ.ᔈ(paramˊ));
    ˊ((ᒴ.ˋ)ﺧ.ᔈ(paramˋ));
  }
  
  private void ˊ(int paramInt, T paramT)
  {
    int i;
    if (paramInt == 3) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (paramT != null) {
      j = 1;
    } else {
      j = 0;
    }
    boolean bool;
    if (i == j) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ᒽ(bool);
    synchronized (this.Ea)
    {
      this.Eh = paramInt;
      this.Ee = paramT;
      return;
    }
  }
  
  private boolean ˊ(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (this.Ea)
    {
      int i = this.Eh;
      if (i != paramInt1) {
        return false;
      }
      ˊ(paramInt2, paramT);
      return true;
    }
  }
  
  private List<String> ͺ(List<String> paramList)
  {
    List localList = ι(paramList);
    if ((localList == null) || (localList == paramList)) {
      return localList;
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext()) {
      if (!paramList.contains((String)localIterator.next())) {
        throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
      }
    }
    return localList;
  }
  
  public void connect()
  {
    this.Ei = true;
    ˊ(2, null);
    int i = ძ.ٴ(this.mContext);
    if (i != 0)
    {
      ˊ(1, null);
      this.mHandler.sendMessage(this.mHandler.obtainMessage(3, Integer.valueOf(i)));
      return;
    }
    if (this.Eg != null)
    {
      Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + ᘣ());
      this.DZ.ˋ(ᘣ(), this.Eg, ᘧ());
    }
    this.Eg = new ヾ.ˏ(this);
    if (!this.DZ.ˊ(ᘣ(), this.Eg, ᘧ()))
    {
      Log.e("GmsClient", "unable to connect to service: " + ᘣ());
      this.mHandler.sendMessage(this.mHandler.obtainMessage(3, Integer.valueOf(9)));
      return;
    }
  }
  
  public void disconnect()
  {
    this.Ei = false;
    synchronized (this.Ef)
    {
      int j = this.Ef.size();
      int i = 0;
      while (i < j)
      {
        ((ヾ.ˋ)this.Ef.get(i)).ẏ();
        i += 1;
      }
      this.Ef.clear();
    }
    ˊ(1, null);
    if (this.Eg != null)
    {
      this.DZ.ˋ(ᘣ(), this.Eg, ᘧ());
      this.Eg = null;
    }
  }
  
  public void dump(String arg1, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.append(???).println("GmsClient:");
    paramFileDescriptor = ??? + "  ";
    paramPrintWriter.append(paramFileDescriptor).append("mStartServiceAction=").println(ᘣ());
    int i;
    synchronized (this.Ea)
    {
      i = this.Eh;
      paramArrayOfString = this.Ee;
    }
    paramPrintWriter.append(paramFileDescriptor).append("mConnectState=");
    switch (i)
    {
    default: 
      break;
    case 2: 
      paramPrintWriter.print("CONNECTING");
      break;
    case 3: 
      paramPrintWriter.print("CONNECTED");
      break;
    case 4: 
      paramPrintWriter.print("DISCONNECTING");
      break;
    case 1: 
      paramPrintWriter.print("DISCONNECTED");
      break;
    }
    paramPrintWriter.print("UNKNOWN");
    paramPrintWriter.append(" mService=");
    if (paramArrayOfString == null)
    {
      paramPrintWriter.println("null");
      return;
    }
    paramPrintWriter.append(ᘦ()).append("@").println(Integer.toHexString(System.identityHashCode(paramArrayOfString.asBinder())));
  }
  
  public final Context getContext()
  {
    return this.mContext;
  }
  
  public boolean isConnected()
  {
    synchronized (this.Ea)
    {
      int i = this.Eh;
      boolean bool;
      if (i == 3) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public boolean isConnecting()
  {
    synchronized (this.Ea)
    {
      int i = this.Eh;
      boolean bool;
      if (i == 2) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  protected void ˊ(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    this.mHandler.sendMessage(this.mHandler.obtainMessage(1, new ヾ.aux(this, paramInt, paramIBinder, paramBundle)));
  }
  
  public void ˊ(ᒴ.ˊ paramˊ)
  {
    this.CD.ˊ(paramˊ);
  }
  
  public void ˊ(ᒴ.ˋ paramˋ)
  {
    this.CD.ˊ(paramˋ);
  }
  
  public void ˊ(ᒴ.ˏ paramˏ)
  {
    this.Ed = ((ᒴ.ˏ)ﺧ.ʼ(paramˏ, "Must provide a non-null ConnectionStatusReportCallbacks"));
    this.Ec = true;
  }
  
  public void ˊ(בֿ paramבֿ)
  {
    Bundle localBundle = ᴦ();
    Scope[] arrayOfScope;
    if (this.CV == null) {
      arrayOfScope = null;
    } else {
      arrayOfScope = h.ʾ(this.CV);
    }
    paramבֿ = new zzae(paramבֿ, arrayOfScope, this.mContext.getPackageName(), localBundle);
    try
    {
      this.Eb.ˊ(new ヾ.ˎ(this), paramבֿ);
      return;
    }
    catch (DeadObjectException paramבֿ)
    {
      Log.w("GmsClient", "service died");
      ᵃ(1);
      return;
    }
    catch (RemoteException paramבֿ)
    {
      Log.w("GmsClient", "Remote exception occurred", paramבֿ);
    }
  }
  
  protected abstract T ˋ(IBinder paramIBinder);
  
  protected void ˋ(int paramInt, Bundle paramBundle)
  {
    this.mHandler.sendMessage(this.mHandler.obtainMessage(5, new ヾ.ʻ(this, paramInt, paramBundle)));
  }
  
  public void ˋ(בֿ paramבֿ)
  {
    try
    {
      Object localObject = ᴉ();
      localObject = new zzi(this.Ej).ᕀ(this.mContext.getPackageName()).ˋ((Bundle)localObject);
      if (this.CV != null) {
        ((zzi)localObject).ˊ(h.ʾ(this.CV));
      }
      if (ट()) {
        ((zzi)localObject).ˊ(ᖬ()).ˏ(paramבֿ);
      } else if (ᴩ()) {
        ((zzi)localObject).ˊ(this.Cc);
      }
      this.Eb.ˊ(new ヾ.ˎ(this), (zzi)localObject);
      return;
    }
    catch (DeadObjectException paramבֿ)
    {
      Log.w("GmsClient", "service died");
      ᵃ(1);
      return;
    }
    catch (RemoteException paramבֿ)
    {
      Log.w("GmsClient", "Remote exception occurred", paramבֿ);
    }
  }
  
  public boolean ट()
  {
    return false;
  }
  
  public boolean ᐵ()
  {
    return this.Ei;
  }
  
  public Bundle ᑈ()
  {
    return null;
  }
  
  public final Account ᖬ()
  {
    if (this.Cc != null) {
      return this.Cc;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  protected abstract String ᘣ();
  
  protected abstract String ᘦ();
  
  protected String ᘧ()
  {
    return this.DY.ᖿ();
  }
  
  protected Bundle ᴉ()
  {
    return new Bundle();
  }
  
  protected final void ᴘ()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public final T ᴝ()
  {
    for (;;)
    {
      synchronized (this.Ea)
      {
        if (this.Eh == 4) {
          throw new DeadObjectException();
        }
        ᴘ();
        if (this.Ee != null)
        {
          bool = true;
          ﺧ.ˎ(bool, "Client is connected but service is null");
          IInterface localIInterface = this.Ee;
          return localIInterface;
        }
      }
      boolean bool = false;
    }
  }
  
  protected Bundle ᴦ()
  {
    return null;
  }
  
  public boolean ᴩ()
  {
    return false;
  }
  
  public void ᵃ(int paramInt)
  {
    this.mHandler.sendMessage(this.mHandler.obtainMessage(4, Integer.valueOf(paramInt)));
  }
  
  protected List<String> ι(List<String> paramList)
  {
    return paramList;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¾
 * JD-Core Version:    0.7.0.1
 */