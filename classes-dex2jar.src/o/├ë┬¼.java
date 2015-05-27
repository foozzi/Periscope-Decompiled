package o;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.File;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@rg(cV={ﾋ.class})
public class ɬ
  extends pq<Void>
  implements pr
{
  private String installerPackageName;
  private File nA;
  private ٱ nB;
  private ऽ nC;
  private String nD = null;
  private String nE = null;
  private String nF = null;
  private String nG;
  private float nH;
  private boolean nI;
  private final ᔩ nJ;
  private sq nK;
  private ة nL;
  private ﾋ nM;
  private String nn;
  private final ConcurrentHashMap<String, String> ny = new ConcurrentHashMap();
  private final Collection<pq<Boolean>> nz;
  private String packageName;
  private final long startTime = System.currentTimeMillis();
  private String versionName;
  
  public ɬ()
  {
    this(1.0F, null, null, false);
  }
  
  ɬ(float paramFloat, ٱ paramٱ, ᔩ paramᔩ, boolean paramBoolean)
  {
    this(paramFloat, paramٱ, paramᔩ, paramBoolean, qn.Ӏ("Crashlytics Exception Handler"));
  }
  
  ɬ(float paramFloat, ٱ paramٱ, ᔩ paramᔩ, boolean paramBoolean, ExecutorService paramExecutorService)
  {
    this.nH = paramFloat;
    this.nB = paramٱ;
    this.nJ = paramᔩ;
    this.nI = paramBoolean;
    this.nL = new ة(paramExecutorService);
    this.nz = Collections.unmodifiableCollection(Arrays.asList(new pq[] { new ᴣ(), new ｆ() }));
  }
  
  private int ˊ(float paramFloat, int paramInt)
  {
    return (int)(paramInt * paramFloat);
  }
  
  private boolean ˊ(Activity paramActivity, tp paramtp)
  {
    ᓾ localᓾ = new ᓾ(paramActivity, paramtp);
    ɬ.if localif = new ɬ.if(this, null);
    paramActivity.runOnUiThread(new ԍ(this, paramActivity, localif, localᓾ, paramtp));
    pj.cd().ˑ("Fabric", "Waiting for user opt-in.");
    localif.await();
    return localif.ӵ();
  }
  
  private static boolean ˊ(String paramString, ɬ paramɬ)
  {
    if ((paramɬ == null) || (paramɬ.nC == null))
    {
      pj.cd().ˏ("Fabric", "Crashlytics must be initialized by calling Fabric.with(Context) " + paramString, null);
      return false;
    }
    return true;
  }
  
  private void ˋ(Context paramContext, String paramString)
  {
    Object localObject;
    if (this.nJ != null) {
      localObject = new ڙ(this.nJ);
    } else {
      localObject = null;
    }
    this.nK = new sl(pj.cd());
    this.nK.ˊ((ss)localObject);
    try
    {
      this.packageName = paramContext.getPackageName();
      this.installerPackageName = cg().getInstallerPackageName();
      pj.cd().ˑ("Fabric", "Installer package name is: " + this.installerPackageName);
      localObject = paramContext.getPackageManager().getPackageInfo(this.packageName, 0);
      this.nG = Integer.toString(((PackageInfo)localObject).versionCode);
      if (((PackageInfo)localObject).versionName == null) {
        localObject = "0.0";
      } else {
        localObject = ((PackageInfo)localObject).versionName;
      }
      this.versionName = ((String)localObject);
      this.nn = qh.ᴶ(paramContext);
    }
    catch (Exception localException)
    {
      pj.cd().ˏ("Fabric", "Error setting up app properties", localException);
    }
    cg().cI();
    ˊ(this.nn, ᐨ(paramContext)).ˊ(paramString, this.packageName);
  }
  
  public static void ˋ(Throwable paramThrowable)
  {
    if (у()) {
      return;
    }
    ɬ localɬ = ｿ();
    if (ˊ("prior to logging exceptions.", localɬ))
    {
      if (paramThrowable == null)
      {
        pj.cd().ˋ(5, "Fabric", "Crashlytics is ignoring a request to log a null exception.");
        return;
      }
      localɬ.nC.ˊ(Thread.currentThread(), paramThrowable);
    }
  }
  
  static void ˌ(String paramString)
  {
    ᴣ localᴣ = (ᴣ)pj.ـ(ᴣ.class);
    if (localᴣ != null) {
      localᴣ.ˊ(new qj.ˊ(paramString));
    }
  }
  
  static void ˍ(String paramString)
  {
    ᴣ localᴣ = (ᴣ)pj.ـ(ᴣ.class);
    if (localᴣ != null) {
      localᴣ.ˊ(new qj.if(paramString));
    }
  }
  
  private static boolean у()
  {
    ɬ localɬ = ｿ();
    return (localɬ == null) || (localɬ.nI);
  }
  
  private boolean ᐨ(Context paramContext)
  {
    return qh.ˊ(paramContext, "com.crashlytics.RequireBuildId", true);
  }
  
  public static ɬ ｿ()
  {
    try
    {
      ɬ localɬ = (ɬ)pj.ـ(ɬ.class);
      return localɬ;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      pj.cd().ˏ("Fabric", "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()", null);
      throw localIllegalStateException;
    }
  }
  
  private void ﾄ()
  {
    Object localObject = new ο(this);
    Iterator localIterator = cj().iterator();
    while (localIterator.hasNext()) {
      ((rk)localObject).ˊ((rp)localIterator.next());
    }
    localObject = ch().getExecutorService().submit((Callable)localObject);
    pj.cd().ˑ("Fabric", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
    try
    {
      ((Future)localObject).get(4L, TimeUnit.SECONDS);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      pj.cd().ˏ("Fabric", "Crashlytics was interrupted during initialization.", localInterruptedException);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      pj.cd().ˏ("Fabric", "Problem encountered during Crashlytics initialization.", localExecutionException);
      return;
    }
    catch (TimeoutException localTimeoutException)
    {
      pj.cd().ˏ("Fabric", "Crashlytics timed out during initialization.", localTimeoutException);
    }
  }
  
  Map<String, String> getAttributes()
  {
    return Collections.unmodifiableMap(this.ny);
  }
  
  String getInstallerPackageName()
  {
    return this.installerPackageName;
  }
  
  String getPackageName()
  {
    return this.packageName;
  }
  
  String getUserName()
  {
    if (cg().cz()) {
      return this.nF;
    }
    return null;
  }
  
  public String getVersion()
  {
    return "2.2.3.41";
  }
  
  String ć()
  {
    return this.nG;
  }
  
  String Ĩ()
  {
    return qh.ʻ(ｿ().getContext(), "com.crashlytics.ApiEndpoint");
  }
  
  ऽ Ľ()
  {
    return this.nC;
  }
  
  String ŧ()
  {
    if (cg().cz()) {
      return this.nD;
    }
    return null;
  }
  
  String Ƭ()
  {
    if (cg().cz()) {
      return this.nE;
    }
    return null;
  }
  
  void ȑ()
  {
    this.nL.ˊ(new о(this));
  }
  
  void ț()
  {
    this.nL.ˋ(new у(this));
  }
  
  boolean ɤ()
  {
    return ((Boolean)this.nL.ˊ(new э(this))).booleanValue();
  }
  
  ﾚ ɬ()
  {
    ﾚ localﾚ = null;
    if (this.nM != null) {
      localﾚ = this.nM.Ἵ();
    }
    return localﾚ;
  }
  
  ć ˊ(String paramString, boolean paramBoolean)
  {
    return new ć(paramString, paramBoolean);
  }
  
  ᓺ ˊ(tu paramtu)
  {
    if (paramtu != null) {
      return new ᓻ(this, Ĩ(), paramtu.Zq.YI, this.nK);
    }
    return null;
  }
  
  File Τ()
  {
    return new sw(this).getFilesDir();
  }
  
  boolean ο()
  {
    return ((Boolean)tr.dN().ˊ(new є(this), Boolean.valueOf(false))).booleanValue();
  }
  
  boolean υ()
  {
    return new sy(this).dG().getBoolean("always_send_reports_opt_in", false);
  }
  
  boolean Т()
  {
    return ((Boolean)tr.dN().ˊ(new ӵ(this), Boolean.valueOf(true))).booleanValue();
  }
  
  tq о()
  {
    tu localtu = tr.dN().dO();
    if (localtu == null) {
      return null;
    }
    return localtu.Zr;
  }
  
  @SuppressLint({"CommitPrefEdits"})
  void ᐣ(boolean paramBoolean)
  {
    sy localsy = new sy(this);
    localsy.ˊ(localsy.edit().putBoolean("always_send_reports_opt_in", paramBoolean));
  }
  
  boolean ᐧ(Context paramContext)
  {
    if (this.nI) {
      return false;
    }
    Object localObject = new qf().ᐠ(paramContext);
    if (localObject == null) {
      return false;
    }
    pj.cd().ـ("Fabric", "Initializing Crashlytics " + getVersion());
    this.nA = new File(Τ(), "initialization_marker");
    boolean bool2 = false;
    try
    {
      ˋ(paramContext, (String)localObject);
      boolean bool1 = bool2;
      try
      {
        localObject = new ᚐ(getContext(), this.nn, getPackageName());
        bool1 = bool2;
        pj.cd().ˑ("Fabric", "Installing exception handler...");
        bool1 = bool2;
        this.nC = new ऽ(Thread.getDefaultUncaughtExceptionHandler(), this.nB, this.nL, cg(), (ᚐ)localObject, this);
        bool1 = bool2;
        bool2 = ɤ();
        bool1 = bool2;
        this.nC.ٮ();
        bool1 = bool2;
        Thread.setDefaultUncaughtExceptionHandler(this.nC);
        bool1 = bool2;
        pj.cd().ˑ("Fabric", "Successfully installed exception handler.");
        bool1 = bool2;
      }
      catch (Exception localException)
      {
        pj.cd().ˏ("Fabric", "There was a problem installing the exception handler.", localException);
      }
      if ((bool1) && (qh.ᴸ(paramContext)))
      {
        ﾄ();
        return false;
      }
      return true;
    }
    catch (ڈ paramContext)
    {
      throw new rq(paramContext);
    }
    catch (Exception paramContext)
    {
      pj.cd().ˏ("Fabric", "Crashlytics was not started due to an exception during initialization", paramContext);
    }
    return false;
  }
  
  protected boolean ﺰ()
  {
    return ᐧ(super.getContext());
  }
  
  protected Void ﻪ()
  {
    ȑ();
    this.nC.ᐳ();
    int k = 1;
    int j = 1;
    int i = k;
    try
    {
      try
      {
        Object localObject1 = tr.dN().dO();
        if (localObject1 == null)
        {
          i = k;
          pj.cd().ᐧ("Fabric", "Received null settings, skipping initialization!");
          return null;
        }
        i = k;
        if (((tu)localObject1).Zs.YT)
        {
          k = 0;
          j = 0;
          i = k;
          this.nC.ڙ();
          i = k;
          localObject1 = ˊ((tu)localObject1);
          if (localObject1 != null)
          {
            i = k;
            new ᔮ((ᓺ)localObject1).ᐧ(this.nH);
          }
          else
          {
            i = k;
            pj.cd().ᐧ("Fabric", "Unable to create a call to upload reports.");
          }
        }
        i = j;
      }
      catch (Exception localException1)
      {
        pj.cd().ˏ("Fabric", "Error dealing with settings", localException1);
      }
      if (i != 0) {
        pj.cd().ˑ("Fabric", "Crash reporting disabled.");
      }
    }
    catch (Exception localException2)
    {
      pj.cd().ˏ("Fabric", "Problem encountered during Crashlytics initialization.", localException2);
    }
    finally
    {
      ț();
    }
    return null;
  }
  
  public String ｯ()
  {
    return "com.crashlytics.sdk.android:crashlytics";
  }
  
  public Collection<? extends pq> ｼ()
  {
    return this.nz;
  }
  
  String ﾕ()
  {
    return this.versionName;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É¬
 * JD-Core Version:    0.7.0.1
 */