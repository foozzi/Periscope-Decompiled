package o;

import android.content.Context;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public class tr
{
  private final AtomicReference<tu> Zi = new AtomicReference();
  private final CountDownLatch Zj = new CountDownLatch(1);
  private tt Zk;
  private boolean initialized = false;
  
  public static tr dN()
  {
    return if.dR();
  }
  
  private void ˏ(tu paramtu)
  {
    this.Zi.set(paramtu);
    this.Zj.countDown();
  }
  
  public tu dO()
  {
    try
    {
      this.Zj.await();
      tu localtu = (tu)this.Zi.get();
      return localtu;
    }
    catch (InterruptedException localInterruptedException)
    {
      pj.cd().ᐨ("Fabric", "Interrupted while waiting for settings data.");
    }
    return null;
  }
  
  public boolean dP()
  {
    try
    {
      tu localtu = this.Zk.dJ();
      ˏ(localtu);
      boolean bool;
      if (localtu != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean dQ()
  {
    try
    {
      tu localtu = this.Zk.ˊ(ts.Zn);
      ˏ(localtu);
      if (localtu == null) {
        pj.cd().ˏ("Fabric", "Failed to force reload of settings from Crashlytics.", null);
      }
      boolean bool;
      if (localtu != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    finally {}
  }
  
  public <T> T ˊ(tr.ˊ<T> paramˊ, T paramT)
  {
    tu localtu = (tu)this.Zi.get();
    if (localtu == null) {
      return paramT;
    }
    return paramˊ.ˎ(localtu);
  }
  
  public tr ˊ(pq parampq, qr paramqr, sq paramsq, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      if (this.initialized) {
        return this;
      }
      if (this.Zk == null)
      {
        Context localContext = parampq.getContext();
        String str1 = paramqr.cB();
        String str2 = new qf().ᐠ(localContext);
        String str3 = paramqr.getInstallerPackageName();
        qx localqx = new qx();
        tl localtl = new tl();
        tj localtj = new tj(parampq);
        String str4 = qh.ᔈ(localContext);
        paramsq = new tm(parampq, paramString3, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", new Object[] { str1 }), paramsq);
        this.Zk = new tk(parampq, new tx(str2, paramqr.ʹ(str2, str1), qh.ˏ(new String[] { qh.ᴶ(localContext) }), paramString2, paramString1, ql.ї(str3).getId(), str4), localqx, localtl, localtj, paramsq);
      }
      this.initialized = true;
      return this;
    }
    finally {}
  }
  
  static class if
  {
    private static final tr Zl = new tr(null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.tr
 * JD-Core Version:    0.7.0.1
 */