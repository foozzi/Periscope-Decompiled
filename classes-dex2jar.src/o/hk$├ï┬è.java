package o;

import java.util.AbstractSet;
import java.util.Iterator;

final class hk$ˊ
  extends AbstractSet<K>
{
  hk$ˊ(hk paramhk) {}
  
  public void clear()
  {
    this.Li.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return this.Li.containsKey(paramObject);
  }
  
  public Iterator<K> iterator()
  {
    return new hn(this);
  }
  
  public boolean remove(Object paramObject)
  {
    return this.Li.ﾟ(paramObject) != null;
  }
  
  public int size()
  {
    return this.Li.size;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hk.Ë
 * JD-Core Version:    0.7.0.1
 */