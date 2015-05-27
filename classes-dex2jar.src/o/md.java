package o;

import android.content.SharedPreferences;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

public class md<T extends mg>
  implements mh<T>
{
  private final ta<T> PX;
  private final ConcurrentHashMap<Long, T> PY;
  private final ConcurrentHashMap<Long, sz<T>> PZ;
  private final sz<T> Qa;
  private final AtomicReference<T> Qb;
  private final String Qc;
  private final String Qd;
  private volatile boolean Qe = true;
  private final sx pr;
  
  public md(sx paramsx, ta<T> paramta, String paramString1, String paramString2)
  {
    this(paramsx, paramta, new ConcurrentHashMap(1), new ConcurrentHashMap(1), new sz(paramsx, paramta, paramString1), paramString1, paramString2);
  }
  
  md(sx paramsx, ta<T> paramta, ConcurrentHashMap<Long, T> paramConcurrentHashMap, ConcurrentHashMap<Long, sz<T>> paramConcurrentHashMap1, sz<T> paramsz, String paramString1, String paramString2)
  {
    this.pr = paramsx;
    this.PX = paramta;
    this.PY = paramConcurrentHashMap;
    this.PZ = paramConcurrentHashMap1;
    this.Qa = paramsz;
    this.Qb = new AtomicReference();
    this.Qc = paramString1;
    this.Qd = paramString2;
  }
  
  private void aR()
  {
    try
    {
      if (this.Qe)
      {
        aT();
        aS();
        this.Qe = false;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void aS()
  {
    Iterator localIterator = this.pr.dG().getAll().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      if (ᕑ((String)((Map.Entry)localObject).getKey()))
      {
        localObject = (mg)this.PX.ᕁ((String)((Map.Entry)localObject).getValue());
        if (localObject != null) {
          ˊ(((mg)localObject).getId(), (mg)localObject, false);
        }
      }
    }
  }
  
  private void aT()
  {
    mg localmg = (mg)this.Qa.dH();
    if (localmg != null) {
      ˊ(localmg.getId(), localmg, false);
    }
  }
  
  private void ˊ(long paramLong, T paramT, boolean paramBoolean)
  {
    this.PY.put(Long.valueOf(paramLong), paramT);
    sz localsz = (sz)this.PZ.get(Long.valueOf(paramLong));
    Object localObject = localsz;
    if (localsz == null)
    {
      localObject = new sz(this.pr, this.PX, ᕀ(paramLong));
      this.PZ.putIfAbsent(Long.valueOf(paramLong), localObject);
    }
    ((sz)localObject).ᵓ(paramT);
    localObject = (mg)this.Qb.get();
    if ((localObject == null) || (paramBoolean)) {
      try
      {
        this.Qb.compareAndSet(localObject, paramT);
        this.Qa.ᵓ(paramT);
        return;
      }
      finally
      {
        paramT = finally;
        throw paramT;
      }
    }
  }
  
  void aQ()
  {
    if (this.Qe) {
      aR();
    }
  }
  
  public T aU()
  {
    aQ();
    return (mg)this.Qb.get();
  }
  
  public void aV()
  {
    aQ();
    if (this.Qb.get() != null) {
      ᵕ(((mg)this.Qb.get()).getId());
    }
  }
  
  public Map<Long, T> aW()
  {
    aQ();
    return Collections.unmodifiableMap(this.PY);
  }
  
  public void ˊ(T paramT)
  {
    if (paramT == null) {
      throw new IllegalArgumentException("Session must not be null!");
    }
    aQ();
    ˊ(paramT.getId(), paramT, true);
  }
  
  public T ᑊ(long paramLong)
  {
    aQ();
    return (mg)this.PY.get(Long.valueOf(paramLong));
  }
  
  String ᕀ(long paramLong)
  {
    return this.Qd + "_" + paramLong;
  }
  
  boolean ᕑ(String paramString)
  {
    return paramString.startsWith(this.Qd);
  }
  
  public void ᵕ(long paramLong)
  {
    aQ();
    if ((this.Qb.get() != null) && (((mg)this.Qb.get()).getId() == paramLong)) {
      try
      {
        this.Qb.set(null);
        this.Qa.clear();
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    this.PY.remove(Long.valueOf(paramLong));
    sz localsz = (sz)this.PZ.remove(Long.valueOf(paramLong));
    if (localsz != null) {
      localsz.clear();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.md
 * JD-Core Version:    0.7.0.1
 */