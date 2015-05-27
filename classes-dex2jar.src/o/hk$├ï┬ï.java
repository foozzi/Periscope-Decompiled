package o;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class hk$ˋ<T>
  implements Iterator<T>
{
  hk.ˎ<K, V> Ll = this.Li.Lf.Ll;
  hk.ˎ<K, V> Lm = null;
  int Ln = this.Li.modCount;
  
  private hk$ˋ(hk paramhk) {}
  
  final hk.ˎ<K, V> E()
  {
    hk.ˎ localˎ = this.Ll;
    if (localˎ == this.Li.Lf) {
      throw new NoSuchElementException();
    }
    if (this.Li.modCount != this.Ln) {
      throw new ConcurrentModificationException();
    }
    this.Ll = localˎ.Ll;
    this.Lm = localˎ;
    return localˎ;
  }
  
  public final boolean hasNext()
  {
    return this.Ll != this.Li.Lf;
  }
  
  public final void remove()
  {
    if (this.Lm == null) {
      throw new IllegalStateException();
    }
    this.Li.ˊ(this.Lm, true);
    this.Lm = null;
    this.Ln = this.Li.modCount;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hk.Ë
 * JD-Core Version:    0.7.0.1
 */