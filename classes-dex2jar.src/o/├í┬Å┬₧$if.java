package o;

import java.util.ArrayList;
import java.util.List;

class Ꮮ$if<K, V>
{
  private final K it;
  private List<V> iu;
  if<K, V> iw = this;
  if<K, V> ix = this;
  
  public Ꮮ$if()
  {
    this(null);
  }
  
  public Ꮮ$if(K paramK)
  {
    this.it = paramK;
  }
  
  public void add(V paramV)
  {
    if (this.iu == null) {
      this.iu = new ArrayList();
    }
    this.iu.add(paramV);
  }
  
  public V removeLast()
  {
    int i = size();
    if (i > 0) {
      return this.iu.remove(i - 1);
    }
    return null;
  }
  
  public int size()
  {
    if (this.iu != null) {
      return this.iu.size();
    }
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á.if
 * JD-Core Version:    0.7.0.1
 */