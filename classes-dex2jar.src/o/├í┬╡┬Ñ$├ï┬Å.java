package o;

import java.util.Collection;
import java.util.Iterator;

final class ᵥ$ˏ
  implements Collection<V>
{
  ᵥ$ˏ(ᵥ paramᵥ) {}
  
  public boolean add(V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends V> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public void clear()
  {
    this.ゝ.ˇ();
  }
  
  public boolean contains(Object paramObject)
  {
    return this.ゝ.ˎ(paramObject) >= 0;
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
  
  public boolean isEmpty()
  {
    return this.ゝ.ʴ() == 0;
  }
  
  public Iterator<V> iterator()
  {
    return new ᵥ.if(this.ゝ, 1);
  }
  
  public boolean remove(Object paramObject)
  {
    int i = this.ゝ.ˎ(paramObject);
    if (i >= 0)
    {
      this.ゝ.ʿ(i);
      return true;
    }
    return false;
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    int j = this.ゝ.ʴ();
    boolean bool = false;
    int i = 0;
    while (i < j)
    {
      int k = j;
      int m = i;
      if (paramCollection.contains(this.ゝ.ˏ(i, 1)))
      {
        this.ゝ.ʿ(i);
        m = i - 1;
        k = j - 1;
        bool = true;
      }
      i = m + 1;
      j = k;
    }
    return bool;
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    int j = this.ゝ.ʴ();
    boolean bool = false;
    int i = 0;
    while (i < j)
    {
      int k = j;
      int m = i;
      if (!paramCollection.contains(this.ゝ.ˏ(i, 1)))
      {
        this.ゝ.ʿ(i);
        m = i - 1;
        k = j - 1;
        bool = true;
      }
      i = m + 1;
      j = k;
    }
    return bool;
  }
  
  public int size()
  {
    return this.ゝ.ʴ();
  }
  
  public Object[] toArray()
  {
    return this.ゝ.ˌ(1);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return this.ゝ.ˊ(paramArrayOfT, 1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ¥.Ë
 * JD-Core Version:    0.7.0.1
 */