package o;

import java.util.Map.Entry;

final class hk$ˎ<K, V>
  implements Map.Entry<K, V>
{
  V Kx;
  ˎ<K, V> Ll;
  ˎ<K, V> Lo;
  ˎ<K, V> Lp;
  ˎ<K, V> Lq;
  ˎ<K, V> Lr;
  int height;
  final K it;
  
  hk$ˎ()
  {
    this.it = null;
    this.Lr = this;
    this.Ll = this;
  }
  
  hk$ˎ(ˎ<K, V> paramˎ1, K paramK, ˎ<K, V> paramˎ2, ˎ<K, V> paramˎ3)
  {
    this.Lo = paramˎ1;
    this.it = paramK;
    this.height = 1;
    this.Ll = paramˎ2;
    this.Lr = paramˎ3;
    paramˎ3.Ll = this;
    paramˎ2.Lr = this;
  }
  
  public ˎ<K, V> F()
  {
    Object localObject2 = this;
    ˎ localˎ;
    for (Object localObject1 = ((ˎ)localObject2).Lp; localObject1 != null; localObject1 = localˎ)
    {
      localˎ = ((ˎ)localObject1).Lp;
      localObject2 = localObject1;
    }
    return localObject2;
  }
  
  public ˎ<K, V> G()
  {
    Object localObject2 = this;
    ˎ localˎ;
    for (Object localObject1 = ((ˎ)localObject2).Lq; localObject1 != null; localObject1 = localˎ)
    {
      localˎ = ((ˎ)localObject1).Lq;
      localObject2 = localObject1;
    }
    return localObject2;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      return (this.it == null ? paramObject.getKey() == null : this.it.equals(paramObject.getKey())) && (this.Kx == null ? paramObject.getValue() == null : this.Kx.equals(paramObject.getValue()));
    }
    return false;
  }
  
  public K getKey()
  {
    return this.it;
  }
  
  public V getValue()
  {
    return this.Kx;
  }
  
  public int hashCode()
  {
    int i;
    if (this.it == null) {
      i = 0;
    } else {
      i = this.it.hashCode();
    }
    int j;
    if (this.Kx == null) {
      j = 0;
    } else {
      j = this.Kx.hashCode();
    }
    return i ^ j;
  }
  
  public V setValue(V paramV)
  {
    Object localObject = this.Kx;
    this.Kx = paramV;
    return localObject;
  }
  
  public String toString()
  {
    return this.it + "=" + this.Kx;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hk.Ë
 * JD-Core Version:    0.7.0.1
 */