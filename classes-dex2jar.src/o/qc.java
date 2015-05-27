package o;

import android.content.Context;
import java.lang.reflect.Method;

class qc
  implements qe
{
  private final Context dV;
  
  public qc(Context paramContext)
  {
    this.dV = paramContext.getApplicationContext();
  }
  
  private String cq()
  {
    try
    {
      String str = (String)Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(ː(), new Object[0]);
      return str;
    }
    catch (Exception localException)
    {
      pj.cd().ᐧ("Fabric", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }
    return null;
  }
  
  private boolean cr()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(ː(), new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
      pj.cd().ᐧ("Fabric", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }
    return false;
  }
  
  private Object ː()
  {
    try
    {
      Object localObject = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", new Class[] { Context.class }).invoke(null, new Object[] { this.dV });
      return localObject;
    }
    catch (Exception localException)
    {
      pj.cd().ᐧ("Fabric", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }
    return null;
  }
  
  public pz cl()
  {
    if (ۥ(this.dV)) {
      return new pz(cq(), cr());
    }
    return null;
  }
  
  boolean ۥ(Context paramContext)
  {
    try
    {
      int i = ((Integer)Class.forName("o.ძ").getMethod("isGooglePlayServicesAvailable", new Class[] { Context.class }).invoke(null, new Object[] { paramContext })).intValue();
      return i == 0;
    }
    catch (Exception paramContext) {}
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qc
 * JD-Core Version:    0.7.0.1
 */