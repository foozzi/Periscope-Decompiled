package o;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class ᖨ
  implements ᒴ
{
  private final Lock CB = new ReentrantLock();
  private final Condition CC = this.CB.newCondition();
  private final 乀 CD;
  private final int CE;
  final Queue<ᖨ.ᐝ<?>> CF = new LinkedList();
  private ConnectionResult CG;
  private int CH;
  private volatile int CI = 4;
  private volatile boolean CJ;
  private int CK = 0;
  private boolean CL = false;
  private int CM;
  private long CN = 120000L;
  private long CO = 5000L;
  private final ᖨ.ˋ CP;
  BroadcastReceiver CQ;
  private final Bundle CR = new Bundle();
  private final Map<ᒰ.ˎ<?>, ᒰ.ˊ> CS = new HashMap();
  private final Set<ᒰ.ˎ<?>> CT = new HashSet();
  private final Map<ᒰ.ˎ<?>, ConnectionResult> CU = new HashMap();
  private final List<String> CV;
  private boolean CW;
  private ah CX;
  private int CY;
  private boolean CZ;
  private final Looper Cn;
  private boolean Da;
  private בֿ Db;
  private boolean Dc;
  private boolean Dd;
  private final Set<ᴉ<?>> De = Collections.newSetFromMap(new WeakHashMap());
  final Set<ᖨ.ᐝ<?>> Df = Collections.newSetFromMap(new ConcurrentHashMap(16, 0.75F, 2));
  private final ᖨ.ˏ Dg = new ᖪ(this);
  private final ᒴ.ˊ Dh = new ᘅ(this);
  private final ᒴ.ˏ Di = new ᘣ(this);
  private final 乀.if Dj = new ᘦ(this);
  private final Context mContext;
  
  public ᖨ(Context paramContext, Looper paramLooper, ぃ paramぃ, ᒰ.ˋ<? extends ah, ai> paramˋ, Map<ᒰ<?>, ᒰ.if> paramMap, Map<ᒰ<?>, Boolean> paramMap1, Set<ᒴ.ˊ> paramSet, Set<ᒴ.ˋ> paramSet1, int paramInt)
  {
    this.mContext = paramContext;
    this.CD = new 乀(paramLooper, this.Dj);
    this.Cn = paramLooper;
    this.CP = new ᖨ.ˋ(this, paramLooper);
    this.CE = paramInt;
    paramSet = paramSet.iterator();
    Object localObject;
    while (paramSet.hasNext())
    {
      localObject = (ᒴ.ˊ)paramSet.next();
      this.CD.ˊ((ᒴ.ˊ)localObject);
    }
    paramSet = paramSet1.iterator();
    while (paramSet.hasNext())
    {
      paramSet1 = (ᒴ.ˋ)paramSet.next();
      this.CD.ˊ(paramSet1);
    }
    this.CV = Collections.unmodifiableList(paramぃ.ᖽ());
    this.CZ = false;
    this.CY = 2;
    int i = 0;
    paramSet = paramMap.keySet().iterator();
    while (paramSet.hasNext())
    {
      paramSet1 = (ᒰ)paramSet.next();
      localObject = paramMap.get(paramSet1);
      paramInt = 0;
      if (paramMap1.get(paramSet1) != null) {
        if (((Boolean)paramMap1.get(paramSet1)).booleanValue()) {
          paramInt = 2;
        } else {
          paramInt = 1;
        }
      }
      localObject = ˊ(paramSet1.ڽ(), localObject, paramContext, paramLooper, paramぃ, this.Dh, ˊ(paramSet1, paramInt));
      ((ᒰ.ˊ)localObject).ˊ(this.Di);
      this.CS.put(paramSet1.ܫ(), localObject);
      int j;
      if (paramSet1.ڽ().getPriority() == 1) {
        j = 1;
      } else {
        j = 0;
      }
      i |= j;
      if (((ᒰ.ˊ)localObject).ट())
      {
        this.CZ = true;
        if (paramInt < this.CY) {
          this.CY = paramInt;
        }
        if (paramInt != 0) {
          this.CT.add(paramSet1.ܫ());
        }
      }
    }
    if (i != 0) {
      this.CZ = false;
    }
    if (this.CZ)
    {
      paramぃ.ˊ(Integer.valueOf(getSessionId()));
      ˊ(paramContext, paramLooper, paramぃ, paramˋ);
    }
  }
  
  private void resume()
  {
    this.CB.lock();
    try
    {
      if (Ⴡ()) {
        connect();
      }
      return;
    }
    finally
    {
      this.CB.unlock();
    }
  }
  
  private static <C extends ᒰ.ˊ, O> C ˊ(ᒰ.ˋ<C, O> paramˋ, Object paramObject, Context paramContext, Looper paramLooper, ぃ paramぃ, ᒴ.ˊ paramˊ, ᒴ.ˋ paramˋ1)
  {
    return paramˋ.ˊ(paramContext, paramLooper, paramぃ, paramObject, paramˊ, paramˋ1);
  }
  
  private final ᒴ.ˋ ˊ(ᒰ<?> paramᒰ, int paramInt)
  {
    return new ᘧ(this, paramInt, paramᒰ);
  }
  
  private void ˊ(Context paramContext, Looper paramLooper, ぃ paramぃ, ᒰ.ˋ<? extends ah, ai> paramˋ)
  {
    this.CX = ((ah)ˊ(paramˋ, paramぃ.ᗁ(), paramContext, paramLooper, paramぃ, new ᖬ(this), new ᖽ(this)));
  }
  
  private void ˊ(zzaa paramzzaa)
  {
    ConnectionResult localConnectionResult = paramzzaa.ᒵ();
    if (localConnectionResult.չ())
    {
      this.CP.post(new ᖾ(this, paramzzaa));
      return;
    }
    ˎ(localConnectionResult);
  }
  
  private <A extends ᒰ.ˊ> void ˊ(ᖨ.ᐝ<A> paramᐝ)
  {
    this.CB.lock();
    for (;;)
    {
      try
      {
        if (paramᐝ.ܫ() != null)
        {
          bool = true;
          ﺧ.ˏ(bool, "This task can not be executed or enqueued (it's probably a Batch or malformed)");
          this.Df.add(paramᐝ);
          paramᐝ.ˊ(this.Dg);
          if (Ⴡ())
          {
            paramᐝ.ˎ(new Status(8));
            return;
          }
          ᒰ.ˊ localˊ = ˊ(paramᐝ.ܫ());
          if ((!localˊ.isConnected()) && (this.CU.containsKey(paramᐝ.ܫ())))
          {
            paramᐝ.ˎ(new Status(17));
            return;
          }
          paramᐝ.ˊ(localˊ);
          return;
        }
      }
      finally
      {
        this.CB.unlock();
      }
      boolean bool = false;
    }
  }
  
  private boolean ˊ(int paramInt1, int paramInt2, ConnectionResult paramConnectionResult)
  {
    if ((paramInt2 == 1) && (!paramConnectionResult.Դ())) {
      return false;
    }
    return (this.CG == null) || (paramInt1 < this.CH);
  }
  
  private void ˋ(ConnectionResult paramConnectionResult)
  {
    this.CL = false;
    boolean bool;
    if (!paramConnectionResult.Դ()) {
      bool = true;
    } else {
      bool = false;
    }
    ᐡ(bool);
    ว(3);
    if ((!Ⴡ()) || (!ძ.ʽ(this.mContext, paramConnectionResult.getErrorCode())))
    {
      ძ();
      this.CD.ʽ(paramConnectionResult);
    }
    this.CW = false;
  }
  
  private void ˎ(ConnectionResult paramConnectionResult)
  {
    this.CP.post(new ᖿ(this, paramConnectionResult));
  }
  
  private boolean ˏ(ConnectionResult paramConnectionResult)
  {
    return (this.CY == 2) || ((this.CY == 1) && (!paramConnectionResult.Դ()));
  }
  
  private void ป()
  {
    this.CM -= 1;
    if (this.CM == 0)
    {
      if (this.CG != null)
      {
        ˋ(this.CG);
        return;
      }
      switch (this.CK)
      {
      default: 
        return;
      case 0: 
        if (this.CZ)
        {
          this.CK = 1;
          ห();
          return;
        }
        โ();
        return;
      case 1: 
        ล();
        return;
      }
      this.CI = 2;
      ძ();
      if (this.CX != null)
      {
        if (this.Dc) {
          this.CX.ˊ(this.Db, this.Dd);
        }
        ᐡ(false);
      }
      this.CC.signalAll();
      ไ();
      if (this.CL)
      {
        this.CL = false;
        ว(-1);
        return;
      }
      Bundle localBundle;
      if (this.CR.isEmpty()) {
        localBundle = null;
      } else {
        localBundle = this.CR;
      }
      this.CD.ˎ(localBundle);
    }
  }
  
  private void ผ()
  {
    this.CX.ˊ(new ᖨ.ˊ(this));
  }
  
  private Set<Scope> ภ()
  {
    return new HashSet(Arrays.asList(h.ʾ(this.CV)));
  }
  
  private void ล()
  {
    this.CX.ˊ(this.Db, ภ(), new ᖨ.if(this));
  }
  
  private void ว(int paramInt)
  {
    this.CB.lock();
    for (;;)
    {
      boolean bool1;
      try
      {
        if (this.CI != 3)
        {
          if (paramInt == -1)
          {
            ᖨ.ᐝ localᐝ;
            if (isConnecting())
            {
              localIterator = this.CF.iterator();
              if (!localIterator.hasNext()) {
                break label438;
              }
              localᐝ = (ᖨ.ᐝ)localIterator.next();
              if (localᐝ.ท() == 1) {
                break label435;
              }
              localᐝ.cancel();
              localIterator.remove();
              break label435;
            }
            localIterator = this.CF.iterator();
            if (localIterator.hasNext())
            {
              ((ᖨ.ᐝ)localIterator.next()).cancel();
              continue;
            }
            this.CF.clear();
            localIterator = this.Df.iterator();
            if (localIterator.hasNext())
            {
              localᐝ = (ᖨ.ᐝ)localIterator.next();
              localᐝ.ˊ(null);
              localᐝ.cancel();
              continue;
            }
            this.Df.clear();
            localIterator = this.De.iterator();
            if (localIterator.hasNext())
            {
              ((ᴉ)localIterator.next()).clear();
              continue;
            }
            this.De.clear();
            if ((this.CG == null) && (!this.CF.isEmpty()))
            {
              this.CL = true;
              return;
            }
            this.CU.clear();
          }
          bool1 = isConnecting();
          boolean bool2 = isConnected();
          this.CI = 3;
          if (bool1)
          {
            if (paramInt == -1) {
              this.CG = null;
            }
            this.CC.signalAll();
          }
          this.CW = false;
          Iterator localIterator = this.CS.values().iterator();
          if (!localIterator.hasNext()) {
            break label441;
          }
          ((ᒰ.ˊ)localIterator.next()).disconnect();
          continue;
          ᐡ(bool1);
          this.CW = true;
          this.CI = 4;
          if (bool2)
          {
            if (paramInt != -1) {
              this.CD.ᵅ(paramInt);
            }
            this.CW = false;
          }
        }
        return;
      }
      finally
      {
        this.CB.unlock();
      }
      label435:
      continue;
      label438:
      continue;
      label441:
      if (paramInt == -1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
    }
  }
  
  private void ห()
  {
    boolean bool;
    if (getLooper() == this.CP.getLooper()) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˎ(bool, "This method must be run on the mHandlerForCallbacks thread");
    if ((this.CK == 1) && (this.Da))
    {
      this.CM = this.CS.size();
      Iterator localIterator = this.CS.keySet().iterator();
      while (localIterator.hasNext())
      {
        ᒰ.ˎ localˎ = (ᒰ.ˎ)localIterator.next();
        if (this.CU.containsKey(localˎ))
        {
          this.CB.lock();
          try
          {
            ป();
            this.CB.unlock();
          }
          finally
          {
            this.CB.unlock();
          }
        }
        ((ᒰ.ˊ)this.CS.get(localˎ)).ˊ(this.Db);
      }
    }
  }
  
  private void โ()
  {
    this.CK = 2;
    this.CM = this.CS.size();
    Iterator localIterator = this.CS.keySet().iterator();
    while (localIterator.hasNext())
    {
      ᒰ.ˎ localˎ = (ᒰ.ˎ)localIterator.next();
      if (this.CU.containsKey(localˎ)) {
        ป();
      } else {
        ((ᒰ.ˊ)this.CS.get(localˎ)).ˋ(this.Db);
      }
    }
  }
  
  private void ไ()
  {
    this.CB.lock();
    for (;;)
    {
      try
      {
        if (isConnected()) {
          break label103;
        }
        if (!Ⴡ()) {
          break label108;
        }
      }
      finally
      {
        this.CB.unlock();
      }
      ﺧ.ˎ(bool, "GoogleApiClient is not connected yet.");
      boolean bool = this.CF.isEmpty();
      if (!bool)
      {
        try
        {
          ˊ((ᖨ.ᐝ)this.CF.remove());
        }
        catch (DeadObjectException localDeadObjectException)
        {
          Log.w("GoogleApiClientImpl", "Service died while flushing queue", localDeadObjectException);
        }
      }
      else
      {
        this.CB.unlock();
        return;
        label103:
        bool = true;
        continue;
        label108:
        bool = false;
      }
    }
  }
  
  private void ძ()
  {
    this.CB.lock();
    try
    {
      boolean bool = this.CJ;
      if (!bool) {
        return;
      }
      this.CJ = false;
      this.CP.removeMessages(2);
      this.CP.removeMessages(1);
      if (this.CQ != null)
      {
        this.mContext.getApplicationContext().unregisterReceiver(this.CQ);
        this.CQ = null;
      }
      return;
    }
    finally
    {
      this.CB.unlock();
    }
  }
  
  private void ᐝ(ConnectionResult paramConnectionResult)
  {
    if (paramConnectionResult.չ())
    {
      this.CP.post(new ᗁ(this));
      return;
    }
    ˎ(paramConnectionResult);
  }
  
  private void ᐡ(boolean paramBoolean)
  {
    if (this.CX != null)
    {
      if (this.CX.isConnected())
      {
        if (paramBoolean) {
          this.CX.ﾓ();
        }
        this.CX.disconnect();
      }
      this.Db = null;
    }
  }
  
  public void connect()
  {
    this.CB.lock();
    try
    {
      this.CL = false;
      if (!isConnected())
      {
        boolean bool = isConnecting();
        if (!bool) {}
      }
      else
      {
        return;
      }
      this.CW = true;
      this.CG = null;
      this.CI = 1;
      this.CK = 0;
      this.CR.clear();
      this.CM = this.CS.size();
      this.CU.clear();
      this.Da = false;
      this.Dc = false;
      this.Dd = false;
      if (this.CZ) {
        this.CX.connect();
      }
      Iterator localIterator = this.CS.values().iterator();
      while (localIterator.hasNext()) {
        ((ᒰ.ˊ)localIterator.next()).connect();
      }
      return;
    }
    finally
    {
      this.CB.unlock();
    }
  }
  
  public void disconnect()
  {
    ძ();
    ว(-1);
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.append(paramString).println("GoogleApiClient:");
    paramString = paramString + "  ";
    paramPrintWriter.append(paramString).append("mConnectionState=");
    switch (this.CI)
    {
    default: 
      break;
    case 1: 
      paramPrintWriter.print("CONNECTING");
      break;
    case 2: 
      paramPrintWriter.print("CONNECTED");
      break;
    case 3: 
      paramPrintWriter.print("DISCONNECTING");
      break;
    case 4: 
      paramPrintWriter.print("DISCONNECTED");
      break;
    }
    paramPrintWriter.print("UNKNOWN");
    paramPrintWriter.append(" mResuming=").print(this.CJ);
    paramPrintWriter.append(" mWaitingToDisconnect=").println(this.CL);
    paramPrintWriter.append(paramString).append("mWorkQueue.size()=").print(this.CF.size());
    paramPrintWriter.append(" mUnconsumedRunners.size()=").println(this.Df.size());
    Iterator localIterator = this.CS.values().iterator();
    while (localIterator.hasNext()) {
      ((ᒰ.ˊ)localIterator.next()).dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public Looper getLooper()
  {
    return this.Cn;
  }
  
  public int getSessionId()
  {
    return System.identityHashCode(this);
  }
  
  public boolean isConnected()
  {
    return this.CI == 2;
  }
  
  public boolean isConnecting()
  {
    return this.CI == 1;
  }
  
  public <C extends ᒰ.ˊ> C ˊ(ᒰ.ˎ<C> paramˎ)
  {
    paramˎ = (ᒰ.ˊ)this.CS.get(paramˎ);
    ﺧ.ʼ(paramˎ, "Appropriate Api was not requested.");
    return paramˎ;
  }
  
  public <A extends ᒰ.ˊ, R extends ᒹ, T extends ᖧ.if<R, A>> T ˊ(T paramT)
  {
    ﺧ.ˏ(this.CS.containsKey(paramT.ܫ()), "GoogleApiClient is not configured to use the API required for this call.");
    this.CB.lock();
    try
    {
      if (isConnected()) {
        ˋ(paramT);
      } else {
        this.CF.add(paramT);
      }
      return paramT;
    }
    finally
    {
      this.CB.unlock();
    }
  }
  
  public void ˊ(ᒴ.ˊ paramˊ)
  {
    this.CD.ˊ(paramˊ);
  }
  
  public void ˊ(ᒴ.ˋ paramˋ)
  {
    this.CD.ˊ(paramˋ);
  }
  
  public <A extends ᒰ.ˊ, T extends ᖧ.if<? extends ᒹ, A>> T ˋ(T paramT)
  {
    boolean bool;
    if ((isConnected()) || (Ⴡ())) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˎ(bool, "GoogleApiClient is not connected yet.");
    ไ();
    try
    {
      ˊ(paramT);
      return paramT;
    }
    catch (DeadObjectException localDeadObjectException)
    {
      ว(1);
    }
    return paramT;
  }
  
  public void ˋ(ᒴ.ˊ paramˊ)
  {
    this.CD.ˋ(paramˊ);
  }
  
  public void ˋ(ᒴ.ˋ paramˋ)
  {
    this.CD.ˋ(paramˋ);
  }
  
  boolean Ⴡ()
  {
    return this.CJ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¨
 * JD-Core Version:    0.7.0.1
 */