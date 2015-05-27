package o;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class hk<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> Lc = new hl();
  Comparator<? super K> Ld;
  hk.ˎ<K, V> Le;
  final hk.ˎ<K, V> Lf = new hk.ˎ();
  private hk<K, V>.if Lg;
  private hk<K, V>.ˊ Lh;
  int modCount = 0;
  int size = 0;
  
  static
  {
    boolean bool;
    if (!hk.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    }
    $assertionsDisabled = bool;
  }
  
  public hk()
  {
    this(Lc);
  }
  
  public hk(Comparator<? super K> paramComparator)
  {
    if (paramComparator == null) {
      paramComparator = Lc;
    }
    this.Ld = paramComparator;
  }
  
  private boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  private Object writeReplace()
  {
    return new LinkedHashMap(this);
  }
  
  private void ˊ(hk.ˎ<K, V> paramˎ)
  {
    hk.ˎ localˎ1 = paramˎ.Lp;
    hk.ˎ localˎ2 = paramˎ.Lq;
    hk.ˎ localˎ3 = localˎ2.Lp;
    hk.ˎ localˎ4 = localˎ2.Lq;
    paramˎ.Lq = localˎ3;
    if (localˎ3 != null) {
      localˎ3.Lo = paramˎ;
    }
    ˊ(paramˎ, localˎ2);
    localˎ2.Lp = paramˎ;
    paramˎ.Lo = localˎ2;
    int i;
    if (localˎ1 != null) {
      i = localˎ1.height;
    } else {
      i = 0;
    }
    if (localˎ3 != null) {
      j = localˎ3.height;
    } else {
      j = 0;
    }
    paramˎ.height = (Math.max(i, j) + 1);
    int j = paramˎ.height;
    if (localˎ4 != null) {
      i = localˎ4.height;
    } else {
      i = 0;
    }
    localˎ2.height = (Math.max(j, i) + 1);
  }
  
  private void ˊ(hk.ˎ<K, V> paramˎ1, hk.ˎ<K, V> paramˎ2)
  {
    hk.ˎ localˎ = paramˎ1.Lo;
    paramˎ1.Lo = null;
    if (paramˎ2 != null) {
      paramˎ2.Lo = localˎ;
    }
    if (localˎ != null)
    {
      if (localˎ.Lp == paramˎ1)
      {
        localˎ.Lp = paramˎ2;
        return;
      }
      assert (localˎ.Lq == paramˎ1);
      localˎ.Lq = paramˎ2;
      return;
    }
    this.Le = paramˎ2;
  }
  
  private void ˋ(hk.ˎ<K, V> paramˎ)
  {
    hk.ˎ localˎ1 = paramˎ.Lp;
    hk.ˎ localˎ2 = paramˎ.Lq;
    hk.ˎ localˎ3 = localˎ1.Lp;
    hk.ˎ localˎ4 = localˎ1.Lq;
    paramˎ.Lp = localˎ4;
    if (localˎ4 != null) {
      localˎ4.Lo = paramˎ;
    }
    ˊ(paramˎ, localˎ1);
    localˎ1.Lq = paramˎ;
    paramˎ.Lo = localˎ1;
    int i;
    if (localˎ2 != null) {
      i = localˎ2.height;
    } else {
      i = 0;
    }
    if (localˎ4 != null) {
      j = localˎ4.height;
    } else {
      j = 0;
    }
    paramˎ.height = (Math.max(i, j) + 1);
    int j = paramˎ.height;
    if (localˎ3 != null) {
      i = localˎ3.height;
    } else {
      i = 0;
    }
    localˎ1.height = (Math.max(j, i) + 1);
  }
  
  private void ˋ(hk.ˎ<K, V> paramˎ, boolean paramBoolean)
  {
    while (paramˎ != null)
    {
      hk.ˎ localˎ1 = paramˎ.Lp;
      hk.ˎ localˎ2 = paramˎ.Lq;
      int i;
      if (localˎ1 != null) {
        i = localˎ1.height;
      } else {
        i = 0;
      }
      int j;
      if (localˎ2 != null) {
        j = localˎ2.height;
      } else {
        j = 0;
      }
      int k = i - j;
      hk.ˎ localˎ3;
      if (k == -2)
      {
        localˎ1 = localˎ2.Lp;
        localˎ3 = localˎ2.Lq;
        if (localˎ3 != null) {
          i = localˎ3.height;
        } else {
          i = 0;
        }
        if (localˎ1 != null) {
          j = localˎ1.height;
        } else {
          j = 0;
        }
        i = j - i;
        if ((i == -1) || ((i == 0) && (!paramBoolean)))
        {
          ˊ(paramˎ);
        }
        else
        {
          assert (i == 1);
          ˋ(localˎ2);
          ˊ(paramˎ);
        }
        if (paramBoolean) {
          return;
        }
      }
      else if (k == 2)
      {
        localˎ2 = localˎ1.Lp;
        localˎ3 = localˎ1.Lq;
        if (localˎ3 != null) {
          i = localˎ3.height;
        } else {
          i = 0;
        }
        if (localˎ2 != null) {
          j = localˎ2.height;
        } else {
          j = 0;
        }
        i = j - i;
        if ((i == 1) || ((i == 0) && (!paramBoolean)))
        {
          ˋ(paramˎ);
        }
        else
        {
          assert (i == -1);
          ˊ(localˎ1);
          ˋ(paramˎ);
        }
        if (paramBoolean) {
          return;
        }
      }
      else if (k == 0)
      {
        paramˎ.height = (i + 1);
        if (!paramBoolean) {}
      }
      else
      {
        assert ((k == -1) || (k == 1));
        paramˎ.height = (Math.max(i, j) + 1);
        if (!paramBoolean) {
          return;
        }
      }
      paramˎ = paramˎ.Lo;
    }
  }
  
  public void clear()
  {
    this.Le = null;
    this.size = 0;
    this.modCount += 1;
    hk.ˎ localˎ = this.Lf;
    localˎ.Lr = localˎ;
    localˎ.Ll = localˎ;
  }
  
  public boolean containsKey(Object paramObject)
  {
    return ᵗ(paramObject) != null;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    if localif = this.Lg;
    if (localif != null) {
      return localif;
    }
    localif = new if();
    this.Lg = localif;
    return localif;
  }
  
  public V get(Object paramObject)
  {
    paramObject = ᵗ(paramObject);
    if (paramObject != null) {
      return paramObject.Kx;
    }
    return null;
  }
  
  public Set<K> keySet()
  {
    hk.ˊ localˊ = this.Lh;
    if (localˊ != null) {
      return localˊ;
    }
    localˊ = new hk.ˊ(this);
    this.Lh = localˊ;
    return localˊ;
  }
  
  public V put(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    paramK = ˋ(paramK, true);
    Object localObject = paramK.Kx;
    paramK.Kx = paramV;
    return localObject;
  }
  
  public V remove(Object paramObject)
  {
    paramObject = ﾟ(paramObject);
    if (paramObject != null) {
      return paramObject.Kx;
    }
    return null;
  }
  
  public int size()
  {
    return this.size;
  }
  
  void ˊ(hk.ˎ<K, V> paramˎ, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramˎ.Lr.Ll = paramˎ.Ll;
      paramˎ.Ll.Lr = paramˎ.Lr;
    }
    hk.ˎ localˎ1 = paramˎ.Lp;
    hk.ˎ localˎ2 = paramˎ.Lq;
    hk.ˎ localˎ3 = paramˎ.Lo;
    if ((localˎ1 != null) && (localˎ2 != null))
    {
      if (localˎ1.height > localˎ2.height) {
        localˎ1 = localˎ1.G();
      } else {
        localˎ1 = localˎ2.F();
      }
      ˊ(localˎ1, false);
      int i = 0;
      localˎ2 = paramˎ.Lp;
      if (localˎ2 != null)
      {
        i = localˎ2.height;
        localˎ1.Lp = localˎ2;
        localˎ2.Lo = localˎ1;
        paramˎ.Lp = null;
      }
      int j = 0;
      localˎ2 = paramˎ.Lq;
      if (localˎ2 != null)
      {
        j = localˎ2.height;
        localˎ1.Lq = localˎ2;
        localˎ2.Lo = localˎ1;
        paramˎ.Lq = null;
      }
      localˎ1.height = (Math.max(i, j) + 1);
      ˊ(paramˎ, localˎ1);
      return;
    }
    if (localˎ1 != null)
    {
      ˊ(paramˎ, localˎ1);
      paramˎ.Lp = null;
    }
    else if (localˎ2 != null)
    {
      ˊ(paramˎ, localˎ2);
      paramˎ.Lq = null;
    }
    else
    {
      ˊ(paramˎ, null);
    }
    ˋ(localˎ3, false);
    this.size -= 1;
    this.modCount += 1;
  }
  
  hk.ˎ<K, V> ˋ(K paramK, boolean paramBoolean)
  {
    Comparator localComparator = this.Ld;
    Object localObject1 = this.Le;
    int i = 0;
    Object localObject2 = localObject1;
    if (localObject1 != null)
    {
      Comparable localComparable;
      if (localComparator == Lc) {
        localComparable = (Comparable)paramK;
      } else {
        localComparable = null;
      }
      for (;;)
      {
        if (localComparable != null) {
          i = localComparable.compareTo(((hk.ˎ)localObject1).it);
        } else {
          i = localComparator.compare(paramK, ((hk.ˎ)localObject1).it);
        }
        if (i == 0) {
          return localObject1;
        }
        if (i < 0) {
          localObject2 = ((hk.ˎ)localObject1).Lp;
        } else {
          localObject2 = ((hk.ˎ)localObject1).Lq;
        }
        if (localObject2 == null)
        {
          localObject2 = localObject1;
          break;
        }
        localObject1 = localObject2;
      }
    }
    if (!paramBoolean) {
      return null;
    }
    localObject1 = this.Lf;
    if (localObject2 == null)
    {
      if ((localComparator == Lc) && (!(paramK instanceof Comparable))) {
        throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
      }
      paramK = new hk.ˎ((hk.ˎ)localObject2, paramK, (hk.ˎ)localObject1, ((hk.ˎ)localObject1).Lr);
      this.Le = paramK;
    }
    else
    {
      paramK = new hk.ˎ((hk.ˎ)localObject2, paramK, (hk.ˎ)localObject1, ((hk.ˎ)localObject1).Lr);
      if (i < 0) {
        ((hk.ˎ)localObject2).Lp = paramK;
      } else {
        ((hk.ˎ)localObject2).Lq = paramK;
      }
      ˋ((hk.ˎ)localObject2, true);
    }
    this.size += 1;
    this.modCount += 1;
    return paramK;
  }
  
  hk.ˎ<K, V> ˋ(Map.Entry<?, ?> paramEntry)
  {
    hk.ˎ localˎ = ᵗ(paramEntry.getKey());
    int i;
    if ((localˎ != null) && (equal(localˎ.Kx, paramEntry.getValue()))) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return localˎ;
    }
    return null;
  }
  
  hk.ˎ<K, V> ᵗ(Object paramObject)
  {
    if (paramObject != null) {}
    try
    {
      paramObject = ˋ(paramObject, false);
      return paramObject;
    }
    catch (ClassCastException paramObject) {}
    return null;
    return null;
  }
  
  hk.ˎ<K, V> ﾟ(Object paramObject)
  {
    paramObject = ᵗ(paramObject);
    if (paramObject != null) {
      ˊ(paramObject, true);
    }
    return paramObject;
  }
  
  class if
    extends AbstractSet<Map.Entry<K, V>>
  {
    if() {}
    
    public void clear()
    {
      hk.this.clear();
    }
    
    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Map.Entry)) && (hk.this.ˋ((Map.Entry)paramObject) != null);
    }
    
    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new hm(this);
    }
    
    public boolean remove(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry)) {
        return false;
      }
      paramObject = hk.this.ˋ((Map.Entry)paramObject);
      if (paramObject == null) {
        return false;
      }
      hk.this.ˊ(paramObject, true);
      return true;
    }
    
    public int size()
    {
      return hk.this.size;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hk
 * JD-Core Version:    0.7.0.1
 */