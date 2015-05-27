package o;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLSocketFactory;

public class mn
  extends pq<Boolean>
{
  private final TwitterAuthConfig PU;
  mh<mr> Qp;
  mh<lv> Qq;
  ni<mr> Qr;
  private final ConcurrentHashMap<mg, mi> Qs;
  private volatile SSLSocketFactory sslSocketFactory;
  
  public mn(TwitterAuthConfig paramTwitterAuthConfig)
  {
    this.PU = paramTwitterAuthConfig;
    this.Qs = new ConcurrentHashMap();
  }
  
  public static mn bd()
  {
    bg();
    return (mn)pj.ـ(mn.class);
  }
  
  private void bf()
  {
    try
    {
      SSLSocketFactory localSSLSocketFactory = this.sslSocketFactory;
      if (localSSLSocketFactory == null) {
        try
        {
          this.sslSocketFactory = sr.ˋ(new mp(getContext()));
          pj.cd().ˑ("Twitter", "Custom SSL pinning enabled");
        }
        catch (Exception localException)
        {
          pj.cd().ˏ("Twitter", "Exception setting up custom SSL pinning", localException);
        }
      }
      return;
    }
    finally {}
  }
  
  private static void bg()
  {
    if (pj.ـ(mn.class) == null) {
      throw new IllegalStateException("Must start Twitter Kit with Fabric.with() first");
    }
  }
  
  private void bh()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(this.Qp);
    localArrayList.add(this.Qq);
    oe.ˊ(this, localArrayList, cg());
  }
  
  public TwitterAuthConfig be()
  {
    return this.PU;
  }
  
  public void bi()
  {
    bg();
    mh localmh = bj();
    if (localmh != null) {
      localmh.aV();
    }
  }
  
  public mh<mr> bj()
  {
    bg();
    return this.Qp;
  }
  
  public SSLSocketFactory getSSLSocketFactory()
  {
    
    if (this.sslSocketFactory == null) {
      bf();
    }
    return this.sslSocketFactory;
  }
  
  public String getVersion()
  {
    return "1.3.2-SNAPSHOT.dev";
  }
  
  public mi ˋ(mg parammg)
  {
    
    if (!this.Qs.containsKey(parammg)) {
      this.Qs.putIfAbsent(parammg, new mi(parammg));
    }
    return (mi)this.Qs.get(parammg);
  }
  
  protected Boolean ᴣ()
  {
    this.Qp.aU();
    this.Qq.aU();
    getSSLSocketFactory();
    bh();
    this.Qr.bC();
    this.Qr.ˊ(ch().cc());
    return Boolean.valueOf(true);
  }
  
  protected boolean ﺰ()
  {
    this.Qp = new md(new sy(this), new mr.if(), "active_twittersession", "twittersession");
    this.Qr = new ni(this.Qp, ch().getExecutorService());
    this.Qq = new md(new sy(this), new lv.if(), "active_appsession", "appsession");
    return true;
  }
  
  public String ｯ()
  {
    return "com.twitter.sdk.android:twitter-core";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mn
 * JD-Core Version:    0.7.0.1
 */