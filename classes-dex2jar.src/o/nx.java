package o;

import android.content.Context;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.internal.scribe.ScribeFilesSender;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import javax.net.ssl.SSLSocketFactory;

public class nx
{
  private final TwitterAuthConfig PU;
  final ConcurrentHashMap<Long, oc> RE;
  private final ny RF;
  private final nz.if RG;
  private final ScheduledExecutorService Rv;
  private final pq Rw;
  private final List<mh<? extends mg>> Rx;
  private final qr ok;
  private final SSLSocketFactory sslSocketFactory;
  
  public nx(pq parampq, ScheduledExecutorService paramScheduledExecutorService, ny paramny, nz.if paramif, TwitterAuthConfig paramTwitterAuthConfig, List<mh<? extends mg>> paramList, SSLSocketFactory paramSSLSocketFactory, qr paramqr)
  {
    this.Rw = parampq;
    this.Rv = paramScheduledExecutorService;
    this.RF = paramny;
    this.RG = paramif;
    this.PU = paramTwitterAuthConfig;
    this.Rx = paramList;
    this.sslSocketFactory = paramSSLSocketFactory;
    this.ok = paramqr;
    this.RE = new ConcurrentHashMap(2);
  }
  
  private oc ᐟ(long paramLong)
  {
    Context localContext = this.Rw.getContext();
    Object localObject = new si(localContext, new sw(this.Rw).getFilesDir(), ᐡ(paramLong), ᐪ(paramLong));
    localObject = new oa(localContext, this.RG, new qx(), (si)localObject, this.RF.RL);
    return new oc(localContext, ˊ(paramLong, (oa)localObject), (ru)localObject, this.Rv);
  }
  
  se<nz> ˊ(long paramLong, oa paramoa)
  {
    Context localContext = this.Rw.getContext();
    if (this.RF.RH)
    {
      qh.ᐝ(localContext, "Scribe enabled");
      return new nv(localContext, this.Rv, paramoa, this.RF, new ScribeFilesSender(localContext, this.RF, paramLong, this.PU, this.Rx, this.sslSocketFactory, this.Rv, this.ok));
    }
    qh.ᐝ(localContext, "Scribe disabled");
    return new rr();
  }
  
  public boolean ˊ(nz paramnz, long paramLong)
  {
    try
    {
      יּ(paramLong).ˊ(paramnz);
      return true;
    }
    catch (IOException paramnz)
    {
      qh.ˊ(this.Rw.getContext(), "Failed to scribe event", paramnz);
    }
    return false;
  }
  
  String ᐡ(long paramLong)
  {
    return paramLong + "_se.tap";
  }
  
  String ᐪ(long paramLong)
  {
    return paramLong + "_se_to_send";
  }
  
  oc יּ(long paramLong)
  {
    if (!this.RE.containsKey(Long.valueOf(paramLong))) {
      this.RE.putIfAbsent(Long.valueOf(paramLong), ᐟ(paramLong));
    }
    return (oc)this.RE.get(Long.valueOf(paramLong));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nx
 * JD-Core Version:    0.7.0.1
 */