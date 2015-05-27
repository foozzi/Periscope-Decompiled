package o;

import android.app.Application;
import android.os.Build;
import android.os.Build.VERSION;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.security.Security;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.spongycastle.jce.provider.BouncyCastleProvider;

public class vf
  extends Application
{
  private static ot blo;
  private static aad blp;
  private static zx blq;
  private static acm blr;
  private static zp bls;
  private static Executor blt;
  
  static
  {
    kj.NN = new vg();
    kj.qa = Build.MODEL;
    kj.NO = Build.VERSION.RELEASE;
    Security.insertProviderAt(new BouncyCastleProvider(), 1);
  }
  
  public static ot tH()
  {
    return blo;
  }
  
  public static aad tI()
  {
    return blp;
  }
  
  public static zx tJ()
  {
    return blq;
  }
  
  public static acm tK()
  {
    return blr;
  }
  
  public static zp tL()
  {
    return bls;
  }
  
  public static Executor tM()
  {
    return blt;
  }
  
  public void onCreate()
  {
    super.onCreate();
    vi.ˊ(this);
    pj.ˊ(this, new pq[] { new mn(new TwitterAuthConfig(ze.brk.uM(), ze.brk.uN())), new ɬ() });
    blt = Executors.newCachedThreadPool();
    xt.ˊ(blt);
    adb.ˊ(blt);
    blo = ot.bW().ᔉ(false).bY();
    blp = new aad(this, blo);
    blq = new zx(this);
    blr = new acm(this, blo, blq);
    bls = new zp(blo);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.vf
 * JD-Core Version:    0.7.0.1
 */