package o;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

public class pj
{
  static volatile pj UL;
  static final ps UM = new pi();
  private final Map<Class<? extends pq>, pq> UN;
  private final pn<pj> UO;
  private final pn<?> UP;
  private pg UQ;
  private WeakReference<Activity> UR;
  private AtomicBoolean US;
  final ps UT;
  final boolean UU;
  private final Context dV;
  private final Handler eN;
  private final ExecutorService executorService;
  private final qr ok;
  
  pj(Context paramContext, Map<Class<? extends pq>, pq> paramMap, ro paramro, Handler paramHandler, ps paramps, boolean paramBoolean, pn parampn, qr paramqr)
  {
    this.dV = paramContext;
    this.UN = paramMap;
    this.executorService = paramro;
    this.eN = paramHandler;
    this.UT = paramps;
    this.UU = paramBoolean;
    this.UO = parampn;
    this.US = new AtomicBoolean(false);
    this.UP = ‿(paramMap.size());
    this.ok = paramqr;
  }
  
  static pj cb()
  {
    if (UL == null) {
      throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    }
    return UL;
  }
  
  public static ps cd()
  {
    if (UL == null) {
      return UM;
    }
    return UL.UT;
  }
  
  public static boolean ce()
  {
    if (UL == null) {
      return false;
    }
    return UL.UU;
  }
  
  private void init()
  {
    ᐧ(ˡ(this.dV));
    this.UQ = new pg(this.dV);
    this.UQ.ˊ(new pk(this));
    ˇ(this.dV);
  }
  
  public static pj ˊ(Context paramContext, pq... paramVarArgs)
  {
    if (UL == null) {
      try
      {
        if (UL == null) {
          ˊ(new if(paramContext).ˊ(paramVarArgs).cf());
        }
      }
      finally
      {
        paramContext = finally;
        throw paramContext;
      }
    }
    return UL;
  }
  
  private static void ˊ(pj parampj)
  {
    UL = parampj;
    parampj.init();
  }
  
  private static Map<Class<? extends pq>, pq> ˋ(Collection<? extends pq> paramCollection)
  {
    HashMap localHashMap = new HashMap(paramCollection.size());
    ˏ(localHashMap, paramCollection);
    return localHashMap;
  }
  
  private static void ˏ(Map<Class<? extends pq>, pq> paramMap, Collection<? extends pq> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      pq localpq = (pq)paramCollection.next();
      paramMap.put(localpq.getClass(), localpq);
      if ((localpq instanceof pr)) {
        ˏ(paramMap, ((pr)localpq).ｼ());
      }
    }
  }
  
  private Activity ˡ(Context paramContext)
  {
    if ((paramContext instanceof Activity)) {
      return (Activity)paramContext;
    }
    return null;
  }
  
  public static <T extends pq> T ـ(Class<T> paramClass)
  {
    return (pq)cb().UN.get(paramClass);
  }
  
  public pg cc()
  {
    return this.UQ;
  }
  
  public Activity getCurrentActivity()
  {
    if (this.UR != null) {
      return (Activity)this.UR.get();
    }
    return null;
  }
  
  public ExecutorService getExecutorService()
  {
    return this.executorService;
  }
  
  public String getVersion()
  {
    return "1.3.0.41";
  }
  
  void ˇ(Context paramContext)
  {
    Object localObject1 = ｼ();
    pt localpt = new pt((Collection)localObject1);
    localObject1 = new ArrayList((Collection)localObject1);
    Collections.sort((List)localObject1);
    localpt.ˊ(paramContext, this, pn.Ve, this.ok);
    Object localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((pq)((Iterator)localObject2).next()).ˊ(paramContext, this, this.UP, this.ok);
    }
    localpt.initialize();
    if (cd().isLoggable("Fabric", 3)) {
      paramContext = new StringBuilder("Initializing ").append(ｯ()).append(" [Version: ").append(getVersion()).append("], with the following kits:\n");
    } else {
      paramContext = null;
    }
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (pq)((Iterator)localObject1).next();
      ((pq)localObject2).Vg.ˊ(localpt.Vg);
      ˊ(this.UN, (pq)localObject2);
      ((pq)localObject2).initialize();
      if (paramContext != null) {
        paramContext.append(((pq)localObject2).ｯ()).append(" [Version: ").append(((pq)localObject2).getVersion()).append("]\n");
      }
    }
    if (paramContext != null) {
      cd().ˑ("Fabric", paramContext.toString());
    }
  }
  
  void ˊ(Map<Class<? extends pq>, pq> paramMap, pq parampq)
  {
    Object localObject1 = (rg)parampq.getClass().getAnnotation(rg.class);
    if (localObject1 != null)
    {
      localObject1 = ((rg)localObject1).cV();
      int j = localObject1.length;
      int i = 0;
      while (i < j)
      {
        Object localObject2 = localObject1[i];
        if (localObject2.isInterface())
        {
          Iterator localIterator = paramMap.values().iterator();
          while (localIterator.hasNext())
          {
            pq localpq = (pq)localIterator.next();
            if (localObject2.isAssignableFrom(localpq.getClass())) {
              parampq.Vg.ˊ(localpq.Vg);
            }
          }
        }
        else
        {
          if ((pq)paramMap.get(localObject2) == null) {
            throw new rq("Referenced Kit was null, does the kit exist?");
          }
          parampq.Vg.ˊ(((pq)paramMap.get(localObject2)).Vg);
        }
        i += 1;
      }
    }
  }
  
  public pj ᐧ(Activity paramActivity)
  {
    this.UR = new WeakReference(paramActivity);
    return this;
  }
  
  pn<?> ‿(int paramInt)
  {
    return new pl(this, paramInt);
  }
  
  public String ｯ()
  {
    return "io.fabric.sdk.android:fabric";
  }
  
  public Collection<pq> ｼ()
  {
    return this.UN.values();
  }
  
  public static class if
  {
    private pn<pj> UO;
    private ps UT;
    private boolean UU;
    private pq[] UY;
    private ro UZ;
    private String Va;
    private String Vb;
    private final Context dV;
    private Handler handler;
    
    public if(Context paramContext)
    {
      if (paramContext == null) {
        throw new IllegalArgumentException("Context must not be null.");
      }
      this.dV = paramContext.getApplicationContext();
    }
    
    public pj cf()
    {
      if (this.UY == null) {
        throw new IllegalStateException("Kits must not be null.");
      }
      if (this.UZ == null) {
        this.UZ = ro.cX();
      }
      if (this.handler == null) {
        this.handler = new Handler(Looper.getMainLooper());
      }
      if (this.UT == null) {
        if (this.UU) {
          this.UT = new pi(3);
        } else {
          this.UT = new pi();
        }
      }
      if (this.Vb == null) {
        this.Vb = this.dV.getPackageName();
      }
      if (this.UO == null) {
        this.UO = pn.Ve;
      }
      Map localMap = pj.ˎ(Arrays.asList(this.UY));
      qr localqr = new qr(this.dV, this.Vb, this.Va, localMap.values());
      return new pj(this.dV, localMap, this.UZ, this.handler, this.UT, this.UU, this.UO, localqr);
    }
    
    public if ˊ(pq... paramVarArgs)
    {
      if (paramVarArgs == null) {
        throw new IllegalArgumentException("Kits must not be null.");
      }
      if (paramVarArgs.length == 0) {
        throw new IllegalArgumentException("Kits must not be empty.");
      }
      if (this.UY != null) {
        throw new IllegalStateException("Kits already set.");
      }
      this.UY = paramVarArgs;
      return this;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pj
 * JD-Core Version:    0.7.0.1
 */