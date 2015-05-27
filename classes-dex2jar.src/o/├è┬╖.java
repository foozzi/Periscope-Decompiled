package o;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public class ʷ
  implements Γ, ṟ.if, ץ.if
{
  private final Map<ﮆ, ΐ> hs;
  private final ל ht;
  private final ṟ hu;
  private final ʷ.if hv;
  private final Map<ﮆ, WeakReference<ץ<?>>> hw;
  private final ܖ hx;
  private final ʷ.ˊ hy;
  private ReferenceQueue<ץ<?>> hz;
  
  public ʷ(ṟ paramṟ, ᓳ.if paramif, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2)
  {
    this(paramṟ, paramif, paramExecutorService1, paramExecutorService2, null, null, null, null, null);
  }
  
  ʷ(ṟ paramṟ, ᓳ.if paramif, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, Map<ﮆ, ΐ> paramMap, ל paramל, Map<ﮆ, WeakReference<ץ<?>>> paramMap1, ʷ.if paramif1, ܖ paramܖ)
  {
    this.hu = paramṟ;
    this.hy = new ʷ.ˊ(paramif);
    paramif = paramMap1;
    if (paramMap1 == null) {
      paramif = new HashMap();
    }
    this.hw = paramif;
    paramif = paramל;
    if (paramל == null) {
      paramif = new ל();
    }
    this.ht = paramif;
    paramif = paramMap;
    if (paramMap == null) {
      paramif = new HashMap();
    }
    this.hs = paramif;
    paramif = paramif1;
    if (paramif1 == null) {
      paramif = new ʷ.if(paramExecutorService1, paramExecutorService2, this);
    }
    this.hv = paramif;
    paramif = paramܖ;
    if (paramܖ == null) {
      paramif = new ܖ();
    }
    this.hx = paramif;
    paramṟ.ˊ(this);
  }
  
  private ץ<?> ˊ(ﮆ paramﮆ, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return null;
    }
    ץ localץ = null;
    WeakReference localWeakReference = (WeakReference)this.hw.get(paramﮆ);
    if (localWeakReference != null)
    {
      localץ = (ץ)localWeakReference.get();
      if (localץ != null)
      {
        localץ.acquire();
        return localץ;
      }
      this.hw.remove(paramﮆ);
    }
    return localץ;
  }
  
  private static void ˊ(String paramString, long paramLong, ﮆ paramﮆ)
  {
    Log.v("Engine", paramString + " in " + ｯ.ˎ(paramLong) + "ms, key: " + paramﮆ);
  }
  
  private ץ<?> ˋ(ﮆ paramﮆ, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return null;
    }
    ץ localץ = ˏ(paramﮆ);
    if (localץ != null)
    {
      localץ.acquire();
      this.hw.put(paramﮆ, new ʷ.ˏ(paramﮆ, localץ, ণ()));
    }
    return localץ;
  }
  
  private ץ<?> ˏ(ﮆ paramﮆ)
  {
    paramﮆ = this.hu.ͺ(paramﮆ);
    if (paramﮆ == null) {
      return null;
    }
    if ((paramﮆ instanceof ץ)) {
      return (ץ)paramﮆ;
    }
    return new ץ(paramﮆ, true);
  }
  
  private ReferenceQueue<ץ<?>> ণ()
  {
    if (this.hz == null)
    {
      this.hz = new ReferenceQueue();
      Looper.myQueue().addIdleHandler(new ʷ.ˎ(this.hw, this.hz));
    }
    return this.hz;
  }
  
  public void ʻ(ڔ<?> paramڔ)
  {
    ﾕ.בּ();
    this.hx.ͺ(paramڔ);
  }
  
  public <T, Z, R> ʷ.ˋ ˊ(ﮆ paramﮆ, int paramInt1, int paramInt2, Į<T> paramĮ, ᓹ<T, Z> paramᓹ, ﺭ<Z> paramﺭ, ғ<Z, R> paramғ, ᔿ paramᔿ, boolean paramBoolean, ʖ paramʖ, ᘆ paramᘆ)
  {
    ﾕ.בּ();
    long l = ｯ.〱();
    Object localObject = paramĮ.getId();
    paramﮆ = this.ht.ˊ((String)localObject, paramﮆ, paramInt1, paramInt2, paramᓹ.ﻩ(), paramᓹ.ｃ(), paramﺭ, paramᓹ.ｪ(), paramғ, paramᓹ.ｩ());
    localObject = ˋ(paramﮆ, paramBoolean);
    if (localObject != null)
    {
      paramᘆ.ʼ((ڔ)localObject);
      if (Log.isLoggable("Engine", 2)) {
        ˊ("Loaded resource from cache", l, paramﮆ);
      }
      return null;
    }
    localObject = ˊ(paramﮆ, paramBoolean);
    if (localObject != null)
    {
      paramᘆ.ʼ((ڔ)localObject);
      if (Log.isLoggable("Engine", 2)) {
        ˊ("Loaded resource from active resources", l, paramﮆ);
      }
      return null;
    }
    localObject = (ΐ)this.hs.get(paramﮆ);
    if (localObject != null)
    {
      ((ΐ)localObject).ˊ(paramᘆ);
      if (Log.isLoggable("Engine", 2)) {
        ˊ("Added to existing load", l, paramﮆ);
      }
      return new ʷ.ˋ(paramᘆ, (ΐ)localObject);
    }
    localObject = this.hv.ˎ(paramﮆ, paramBoolean);
    paramĮ = new ز((ز.if)localObject, new ʕ(paramﮆ, paramInt1, paramInt2, paramĮ, paramᓹ, paramﺭ, paramғ, this.hy, paramʖ, paramᔿ), paramᔿ);
    this.hs.put(paramﮆ, localObject);
    ((ΐ)localObject).ˊ(paramᘆ);
    ((ΐ)localObject).ˊ(paramĮ);
    if (Log.isLoggable("Engine", 2)) {
      ˊ("Started new load", l, paramﮆ);
    }
    return new ʷ.ˋ(paramᘆ, (ΐ)localObject);
  }
  
  public void ˊ(ΐ paramΐ, ﮆ paramﮆ)
  {
    
    if (paramΐ.equals((ΐ)this.hs.get(paramﮆ))) {
      this.hs.remove(paramﮆ);
    }
  }
  
  public void ˊ(ﮆ paramﮆ, ץ<?> paramץ)
  {
    
    if (paramץ != null)
    {
      paramץ.ˊ(paramﮆ, this);
      if (paramץ.Ꭻ()) {
        this.hw.put(paramﮆ, new ʷ.ˏ(paramﮆ, paramץ, ণ()));
      }
    }
    this.hs.remove(paramﮆ);
  }
  
  public void ˋ(ﮆ paramﮆ, ץ paramץ)
  {
    ﾕ.בּ();
    this.hw.remove(paramﮆ);
    if (paramץ.Ꭻ())
    {
      this.hu.ˋ(paramﮆ, paramץ);
      return;
    }
    this.hx.ͺ(paramץ);
  }
  
  public void ᐝ(ڔ paramڔ)
  {
    
    if ((paramڔ instanceof ץ))
    {
      ((ץ)paramڔ).release();
      return;
    }
    throw new IllegalArgumentException("Cannot release anything but an EngineResource");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê·
 * JD-Core Version:    0.7.0.1
 */