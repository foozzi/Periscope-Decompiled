package o;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

final class ᵥ$ˋ
  implements Set<K>
{
  ᵥ$ˋ(ᵥ paramᵥ) {}
  
  public boolean add(K paramK)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends K> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public void clear()
  {
    this.ゝ.ˇ();
  }
  
  public boolean contains(Object paramObject)
  {
    return this.ゝ.ˋ(paramObject) >= 0;
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    return ᵥ.ˊ(this.ゝ.ˆ(), paramCollection);
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
      Object localObject = this.ゝ.ˏ(i, 0);
      int k;
      if (localObject == null) {
        k = 0;
      } else {
        k = localObject.hashCode();
      }
      j += k;
      i -= 1;
    }
    return j;
  }
  
  public boolean isEmpty()
  {
    return this.ゝ.ʴ() == 0;
  }
  
  public Iterator<K> iterator()
  {
    return new ᵥ.if(this.ゝ, 0);
  }
  
  public boolean remove(Object paramObject)
  {
    int i = this.ゝ.ˋ(paramObject);
    if (i >= 0)
    {
      this.ゝ.ʿ(i);
      return true;
    }
    return false;
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    return ᵥ.ˋ(this.ゝ.ˆ(), paramCollection);
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    return ᵥ.ˎ(this.ゝ.ˆ(), paramCollection);
  }
  
  public int size()
  {
    return this.ゝ.ʴ();
  }
  
  public Object[] toArray()
  {
    return this.ゝ.ˌ(0);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return this.ゝ.ˊ(paramArrayOfT, 0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ¥.Ë
 * JD-Core Version:    0.7.0.1
 */