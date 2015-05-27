package o;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

abstract class ᵥ<K, V>
{
  ᵥ<K, V>.ˊ ᵊ;
  ᵥ<K, V>.ˋ ᵡ;
  ᵥ<K, V>.ˏ ᵪ;
  
  public static <K, V> boolean ˊ(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!paramMap.containsKey(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public static <T> boolean ˊ(Set<T> paramSet, Object paramObject)
  {
    if (paramSet == paramObject) {
      return true;
    }
    if ((paramObject instanceof Set))
    {
      paramObject = (Set)paramObject;
      try
      {
        if (paramSet.size() == paramObject.size())
        {
          boolean bool = paramSet.containsAll(paramObject);
          if (bool) {
            return true;
          }
        }
        return false;
      }
      catch (NullPointerException paramSet)
      {
        return false;
      }
      catch (ClassCastException paramSet)
      {
        return false;
      }
    }
    return false;
  }
  
  public static <K, V> boolean ˋ(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      paramMap.remove(paramCollection.next());
    }
    return i != paramMap.size();
  }
  
  public static <K, V> boolean ˎ(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext()) {
      if (!paramCollection.contains(localIterator.next())) {
        localIterator.remove();
      }
    }
    return i != paramMap.size();
  }
  
  protected abstract int ʴ();
  
  protected abstract void ʿ(int paramInt);
  
  protected abstract Map<K, V> ˆ();
  
  protected abstract void ˇ();
  
  protected abstract V ˊ(int paramInt, V paramV);
  
  protected abstract void ˊ(K paramK, V paramV);
  
  public <T> T[] ˊ(T[] paramArrayOfT, int paramInt)
  {
    int j = ʴ();
    Object localObject = paramArrayOfT;
    if (paramArrayOfT.length < j) {
      localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), j);
    }
    int i = 0;
    while (i < j)
    {
      localObject[i] = ˏ(i, paramInt);
      i += 1;
    }
    if (localObject.length > j) {
      localObject[j] = null;
    }
    return localObject;
  }
  
  protected abstract int ˋ(Object paramObject);
  
  public Object[] ˌ(int paramInt)
  {
    int j = ʴ();
    Object[] arrayOfObject = new Object[j];
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = ˏ(i, paramInt);
      i += 1;
    }
    return arrayOfObject;
  }
  
  protected abstract int ˎ(Object paramObject);
  
  protected abstract Object ˏ(int paramInt1, int paramInt2);
  
  public Set<Map.Entry<K, V>> ˮ()
  {
    if (this.ᵊ == null) {
      this.ᵊ = new ᵥ.ˊ(this);
    }
    return this.ᵊ;
  }
  
  public Set<K> ۥ()
  {
    if (this.ᵡ == null) {
      this.ᵡ = new ᵥ.ˋ(this);
    }
    return this.ᵡ;
  }
  
  public Collection<V> ᐠ()
  {
    if (this.ᵪ == null) {
      this.ᵪ = new ᵥ.ˏ(this);
    }
    return this.ᵪ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ¥
 * JD-Core Version:    0.7.0.1
 */