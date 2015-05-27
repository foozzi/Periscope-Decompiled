package o;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ᒢ<K, V>
  extends ﹴ<K, V>
  implements Map<K, V>
{
  ᵥ<K, V> ᒼ;
  
  private ᵥ<K, V> ʳ()
  {
    if (this.ᒼ == null) {
      this.ᒼ = new ᖮ(this);
    }
    return this.ᒼ;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return ʳ().ˮ();
  }
  
  public Set<K> keySet()
  {
    return ʳ().ۥ();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    ensureCapacity(this.Ị + paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    return ᵥ.ˎ(this, paramCollection);
  }
  
  public Collection<V> values()
  {
    return ʳ().ᐠ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¢
 * JD-Core Version:    0.7.0.1
 */