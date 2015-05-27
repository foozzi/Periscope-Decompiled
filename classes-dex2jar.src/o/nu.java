package o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;

public class nu
  extends nx
{
  private static volatile ScheduledExecutorService Rv;
  private final pq Rw;
  private final List<mh<? extends mg>> Rx;
  private final String pX;
  
  public nu(pq parampq, String paramString, List<mh<? extends mg>> paramList, qr paramqr)
  {
    this(parampq, paramString, bS(), paramList, paramqr);
  }
  
  public nu(pq parampq, String paramString, fl paramfl, List<mh<? extends mg>> paramList, qr paramqr)
  {
    super(parampq, bT(), ˊ(tr.dN().dO(), ˊ(paramString, parampq)), new nz.if(paramfl), mn.bd().be(), paramList, mn.bd().getSSLSocketFactory(), paramqr);
    this.Rx = paramList;
    this.Rw = parampq;
    this.pX = paramqr.cq();
  }
  
  private static fl bS()
  {
    return new fr().ˊ(fe.JT).f();
  }
  
  private static ScheduledExecutorService bT()
  {
    if (Rv == null) {
      try
      {
        if (Rv == null) {
          Rv = qn.ײ("scribe");
        }
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    return Rv;
  }
  
  private static boolean isEnabled()
  {
    return !"release".equals("debug");
  }
  
  static String ˊ(String paramString, pq parampq)
  {
    return "Fabric/" + parampq.ch().getVersion() + " (Android " + Build.VERSION.SDK_INT + ") " + paramString + "/" + parampq.getVersion();
  }
  
  static ny ˊ(tu paramtu, String paramString)
  {
    int i;
    int j;
    if ((paramtu != null) && (paramtu.py != null))
    {
      i = paramtu.py.Yy;
      j = paramtu.py.Yv;
    }
    else
    {
      i = 100;
      j = 600;
    }
    paramtu = ˍ("https://syndication.twitter.com", "");
    return new ny(isEnabled(), paramtu, "i", "sdk", "", paramString, i, j);
  }
  
  static String ˍ(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      return paramString2;
    }
    return paramString1;
  }
  
  mg aU()
  {
    mg localmg = null;
    Iterator localIterator = this.Rx.iterator();
    while (localIterator.hasNext())
    {
      localmg = ((mh)localIterator.next()).aU();
      if (localmg != null) {
        return localmg;
      }
    }
    return localmg;
  }
  
  public void ˊ(nz paramnz)
  {
    super.ˊ(paramnz, ᐝ(aU()));
  }
  
  public void ˊ(nw... paramVarArgs)
  {
    String str;
    if (this.Rw.getContext() != null) {
      str = this.Rw.getContext().getResources().getConfiguration().locale.getLanguage();
    } else {
      str = "";
    }
    long l = System.currentTimeMillis();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      ˊ(new od(paramVarArgs[i], l, str, this.pX));
      i += 1;
    }
  }
  
  long ᐝ(mg parammg)
  {
    if (parammg != null) {
      return parammg.getId();
    }
    return 0L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nu
 * JD-Core Version:    0.7.0.1
 */