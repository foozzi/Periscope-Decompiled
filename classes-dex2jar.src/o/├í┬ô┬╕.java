package o;

import java.io.File;

public class ᓸ<A, T, Z, R>
  implements ᔁ<A, T, Z, R>, Cloneable
{
  private ﺀ<File, Z> hT;
  private ﺪ<Z> hV;
  private ﭥ<T> hW;
  private ғ<Z, R> hg;
  private ﺀ<T, Z> lz;
  private final ᔁ<A, T, Z, R> ma;
  
  public ᓸ(ᔁ<A, T, Z, R> paramᔁ)
  {
    this.ma = paramᔁ;
  }
  
  public void ˎ(ﭥ<T> paramﭥ)
  {
    this.hW = paramﭥ;
  }
  
  public void ˎ(ﺀ<T, Z> paramﺀ)
  {
    this.lz = paramﺀ;
  }
  
  public ɽ<A, T> Ꮠ()
  {
    return this.ma.Ꮠ();
  }
  
  public ғ<Z, R> ᐜ()
  {
    if (this.hg != null) {
      return this.hg;
    }
    return this.ma.ᐜ();
  }
  
  public ᓸ<A, T, Z, R> ᒩ()
  {
    try
    {
      ᓸ localᓸ = (ᓸ)super.clone();
      return localᓸ;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  public ﺀ<File, Z> ﻩ()
  {
    if (this.hT != null) {
      return this.hT;
    }
    return this.ma.ﻩ();
  }
  
  public ﺀ<T, Z> ｃ()
  {
    if (this.lz != null) {
      return this.lz;
    }
    return this.ma.ｃ();
  }
  
  public ﭥ<T> ｩ()
  {
    if (this.hW != null) {
      return this.hW;
    }
    return this.ma.ｩ();
  }
  
  public ﺪ<Z> ｪ()
  {
    if (this.hV != null) {
      return this.hV;
    }
    return this.ma.ｪ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¸
 * JD-Core Version:    0.7.0.1
 */