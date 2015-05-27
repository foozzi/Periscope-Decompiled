package o;

import android.content.Context;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ﺬ
{
  private static final ɽ jv = new ﺯ();
  private final Context dV;
  private final Map<Class, Map<Class, ʃ>> jt = new HashMap();
  private final Map<Class, Map<Class, ɽ>> ju = new HashMap();
  
  public ﺬ(Context paramContext)
  {
    this.dV = paramContext.getApplicationContext();
  }
  
  private <T, Y> ʃ<T, Y> ʻ(Class<T> paramClass, Class<Y> paramClass1)
  {
    Object localObject2 = (Map)this.jt.get(paramClass);
    Object localObject1 = null;
    if (localObject2 != null) {
      localObject1 = (ʃ)((Map)localObject2).get(paramClass1);
    }
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      Iterator localIterator = this.jt.keySet().iterator();
      for (;;)
      {
        localObject2 = localObject1;
        if (!localIterator.hasNext()) {
          break;
        }
        Object localObject3 = (Class)localIterator.next();
        localObject2 = localObject1;
        if (((Class)localObject3).isAssignableFrom(paramClass))
        {
          localObject3 = (Map)this.jt.get(localObject3);
          localObject2 = localObject1;
          if (localObject3 != null)
          {
            localObject1 = (ʃ)((Map)localObject3).get(paramClass1);
            localObject2 = localObject1;
            if (localObject1 != null) {
              return localObject1;
            }
          }
        }
        localObject1 = localObject2;
      }
    }
    return localObject2;
  }
  
  private <T, Y> void ˊ(Class<T> paramClass, Class<Y> paramClass1, ɽ<T, Y> paramɽ)
  {
    Map localMap = (Map)this.ju.get(paramClass);
    Object localObject = localMap;
    if (localMap == null)
    {
      localObject = new HashMap();
      this.ju.put(paramClass, localObject);
    }
    ((Map)localObject).put(paramClass1, paramɽ);
  }
  
  private <T, Y> void ˏ(Class<T> paramClass, Class<Y> paramClass1)
  {
    ˊ(paramClass, paramClass1, jv);
  }
  
  private <T, Y> ɽ<T, Y> ᐝ(Class<T> paramClass, Class<Y> paramClass1)
  {
    Map localMap = (Map)this.ju.get(paramClass);
    paramClass = null;
    if (localMap != null) {
      paramClass = (ɽ)localMap.get(paramClass1);
    }
    return paramClass;
  }
  
  public <T, Y> ʃ<T, Y> ˋ(Class<T> paramClass, Class<Y> paramClass1, ʃ<T, Y> paramʃ)
  {
    try
    {
      this.ju.clear();
      Map localMap = (Map)this.jt.get(paramClass);
      Object localObject = localMap;
      if (localMap == null)
      {
        localObject = new HashMap();
        this.jt.put(paramClass, localObject);
      }
      paramClass1 = (ʃ)((Map)localObject).put(paramClass1, paramʃ);
      paramClass = paramClass1;
      if (paramClass1 != null)
      {
        paramʃ = this.jt.values().iterator();
        for (;;)
        {
          paramClass = paramClass1;
          if (!paramʃ.hasNext()) {
            break;
          }
          boolean bool = ((Map)paramʃ.next()).containsValue(paramClass1);
          if (bool)
          {
            paramClass = null;
            break;
          }
        }
      }
      return paramClass;
    }
    finally {}
  }
  
  public <T, Y> ɽ<T, Y> ˎ(Class<T> paramClass, Class<Y> paramClass1)
  {
    try
    {
      ɽ localɽ = ᐝ(paramClass, paramClass1);
      if (localɽ != null)
      {
        if (jv.equals(localɽ)) {
          return null;
        }
        return localɽ;
      }
      ʃ localʃ = ʻ(paramClass, paramClass1);
      if (localʃ != null)
      {
        localɽ = localʃ.ˊ(this.dV, this);
        ˊ(paramClass, paramClass1, localɽ);
        paramClass = localɽ;
      }
      else
      {
        ˏ(paramClass, paramClass1);
        paramClass = localɽ;
      }
      return paramClass;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº¬
 * JD-Core Version:    0.7.0.1
 */