package o;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.internal.zzlm;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class a
{
  private static final Object Ev = new Object();
  private static final ComponentName FC = new ComponentName("com.google.android.gms", "com.google.android.gms.common.stats.GmsCoreStatsService");
  private static a Fx;
  private final List<String> FA;
  private final List<String> FB;
  private d FD;
  private final List<String> Fy;
  private final List<String> Fz;
  
  private a()
  {
    if (ﺟ() == c.FL)
    {
      this.Fy = Collections.EMPTY_LIST;
      this.Fz = Collections.EMPTY_LIST;
      this.FA = Collections.EMPTY_LIST;
      this.FB = Collections.EMPTY_LIST;
      return;
    }
    Object localObject = (String)b.if.FG.get();
    if (localObject == null) {
      localObject = Collections.EMPTY_LIST;
    } else {
      localObject = Arrays.asList(((String)localObject).split(","));
    }
    this.Fy = ((List)localObject);
    localObject = (String)b.if.FH.get();
    if (localObject == null) {
      localObject = Collections.EMPTY_LIST;
    } else {
      localObject = Arrays.asList(((String)localObject).split(","));
    }
    this.Fz = ((List)localObject);
    localObject = (String)b.if.FI.get();
    if (localObject == null) {
      localObject = Collections.EMPTY_LIST;
    } else {
      localObject = Arrays.asList(((String)localObject).split(","));
    }
    this.FA = ((List)localObject);
    localObject = (String)b.if.FJ.get();
    if (localObject == null) {
      localObject = Collections.EMPTY_LIST;
    } else {
      localObject = Arrays.asList(((String)localObject).split(","));
    }
    this.FB = ((List)localObject);
    this.FD = new d(1024, ((Long)b.if.FK.get()).longValue());
  }
  
  private void ˊ(Context paramContext, ServiceConnection paramServiceConnection, String paramString1, Intent paramIntent, String paramString2)
  {
    if (!々.DL) {
      return;
    }
    long l1 = ˋ(paramServiceConnection);
    if (!ˊ(paramContext, paramString1, paramIntent, l1, paramString2)) {
      return;
    }
    long l2 = System.currentTimeMillis();
    paramServiceConnection = g.ᐤ(3, 5);
    if ((paramString2.equals("UNBIND")) || (paramString2.equals("DISCONNECT")))
    {
      paramServiceConnection = new zzlm(l2, paramString2, null, null, null, null, paramServiceConnection, l1);
    }
    else
    {
      paramIntent = ˋ(paramContext, paramIntent);
      paramServiceConnection = new zzlm(l2, paramString2, g.ﹶ(paramContext), paramString1, paramIntent.processName, paramIntent.name, paramServiceConnection, l1);
    }
    paramContext.startService(new Intent().setComponent(FC).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", paramServiceConnection));
  }
  
  private boolean ˊ(Context paramContext, String paramString1, Intent paramIntent, long paramLong, String paramString2)
  {
    int i = ﺟ();
    if ((i == c.FL) || (this.FD == null)) {
      return false;
    }
    if ((paramString2 == "DISCONNECT") || (paramString2 == "UNBIND")) {
      return this.FD.ˮ(paramLong);
    }
    paramIntent = ˋ(paramContext, paramIntent);
    if (paramIntent == null) {
      return false;
    }
    paramContext = g.ﹶ(paramContext);
    paramString2 = paramIntent.processName;
    paramIntent = paramIntent.name;
    if ((this.Fy.contains(paramContext)) || (this.Fz.contains(paramString1)) || (this.FA.contains(paramString2)) || (this.FB.contains(paramIntent)) || ((paramString2.equals(paramContext)) && ((c.FP & i) != 0))) {
      return false;
    }
    this.FD.ˊ(Long.valueOf(paramLong));
    return true;
  }
  
  private long ˋ(ServiceConnection paramServiceConnection)
  {
    return Process.myPid() << 32 | System.identityHashCode(paramServiceConnection);
  }
  
  private static ServiceInfo ˋ(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager().queryIntentServices(paramIntent, 128);
    if ((paramContext == null) || (paramContext.size() == 0))
    {
      Log.w("ConnectionTracker", "There are no handler of this intent: " + paramIntent.toUri(0));
      return null;
    }
    if (paramContext.size() > 1)
    {
      Log.w("ConnectionTracker", "There are multiple handlers for this intent: " + paramIntent.toUri(0));
      paramIntent = paramContext.iterator();
      if (paramIntent.hasNext())
      {
        Log.w("ConnectionTracker", ((ResolveInfo)paramIntent.next()).serviceInfo.name);
        return null;
      }
    }
    return ((ResolveInfo)paramContext.get(0)).serviceInfo;
  }
  
  public static a ﺕ()
  {
    synchronized (Ev)
    {
      if (Fx == null) {
        Fx = new a();
      }
    }
    return Fx;
  }
  
  private int ﺟ()
  {
    try
    {
      if ((々.DL) && (ﻏ.isInitialized()) && (ﻏ.ッ() == Process.myUid())) {
        return ((Integer)b.if.FF.get()).intValue();
      }
      int i = c.FL;
      return i;
    }
    catch (SecurityException localSecurityException) {}
    return c.FL;
  }
  
  public void ˊ(Context paramContext, ServiceConnection paramServiceConnection)
  {
    ˊ(paramContext, paramServiceConnection, null, null, "UNBIND");
    paramContext.unbindService(paramServiceConnection);
  }
  
  public void ˊ(Context paramContext, ServiceConnection paramServiceConnection, String paramString, Intent paramIntent)
  {
    ˊ(paramContext, paramServiceConnection, paramString, paramIntent, "CONNECT");
  }
  
  public boolean ˊ(Context paramContext, String paramString, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    ˊ(paramContext, paramServiceConnection, paramString, paramIntent, "BIND");
    return paramContext.bindService(paramIntent, paramServiceConnection, paramInt);
  }
  
  public void ˋ(Context paramContext, ServiceConnection paramServiceConnection)
  {
    ˊ(paramContext, paramServiceConnection, null, null, "DISCONNECT");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.a
 * JD-Core Version:    0.7.0.1
 */