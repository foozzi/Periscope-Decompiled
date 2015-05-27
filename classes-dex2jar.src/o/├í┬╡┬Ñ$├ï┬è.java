package o;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class ᵥ$ˊ
  implements Set<Map.Entry<K, V>>
{
  ᵥ$ˊ(ᵥ paramᵥ) {}
  
  public boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
  {
    int i = this.ゝ.ʴ();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramCollection.next();
      this.ゝ.ˊ(localEntry.getKey(), localEntry.getValue());
    }
    return i != this.ゝ.ʴ();
  }
  
  public void clear()
  {
    this.ゝ.ˇ();
  }
  
  public boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {
      return false;
    }
    paramObject = (Map.Entry)paramObject;
    int i = this.ゝ.ˋ(paramObject.getKey());
    if (i < 0) {
      return false;
    }
    return ᵌ.equal(this.ゝ.ˏ(i, 1), paramObject.getValue());
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!contains(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public boolean equals(Object paramObject)
  {
    return ᵥ.ˊ(this, paramObject);
  }
  
  public int hashCode()
  {
    int j = 0;
    int i = this.ゝ.ʴ() - 1;
    while (i >= 0)
    {
      Object localObject1 = this.ゝ.ˏ(i, 0);
      Object localObject2 = this.ゝ.ˏ(i, 1);
      int k;
      if (localObject1 == null) {
        k = 0;
      } else {
        k = localObject1.hashCode();
      }
      int m;
      if (localObject2 == null) {
        m = 0;
      } else {
        m = localObject2.hashCode();
      }
      j += (k ^ m);
      i -= 1;
    }
    return j;
  }
  
  public boolean isEmpty()
  {
    return this.ゝ.ʴ() == 0;
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    return new ᵥ.ˎ(this.ゝ);
  }
  
  public boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public int size()
  {
    return this.ゝ.ʴ();
  }
  
  public Object[] toArray()
  {
    throw new UnsupportedOperationException();
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean ˊ(Map.Entry<K, V> paramEntry)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ¥.Ë
 * JD-Core Version:    0.7.0.1
 */