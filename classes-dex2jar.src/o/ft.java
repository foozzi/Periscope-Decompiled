package o;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ft
  extends fw
  implements Iterable<fw>
{
  private final List<fw> Kt = new ArrayList();
  
  public boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof ft)) && (((ft)paramObject).Kt.equals(this.Kt)));
  }
  
  public Number g()
  {
    if (this.Kt.size() == 1) {
      return ((fw)this.Kt.get(0)).g();
    }
    throw new IllegalStateException();
  }
  
  public String h()
  {
    if (this.Kt.size() == 1) {
      return ((fw)this.Kt.get(0)).h();
    }
    throw new IllegalStateException();
  }
  
  public int hashCode()
  {
    return this.Kt.hashCode();
  }
  
  public double i()
  {
    if (this.Kt.size() == 1) {
      return ((fw)this.Kt.get(0)).i();
    }
    throw new IllegalStateException();
  }
  
  public Iterator<fw> iterator()
  {
    return this.Kt.iterator();
  }
  
  public BigInteger j()
  {
    if (this.Kt.size() == 1) {
      return ((fw)this.Kt.get(0)).j();
    }
    throw new IllegalStateException();
  }
  
  public long k()
  {
    if (this.Kt.size() == 1) {
      return ((fw)this.Kt.get(0)).k();
    }
    throw new IllegalStateException();
  }
  
  public int l()
  {
    if (this.Kt.size() == 1) {
      return ((fw)this.Kt.get(0)).l();
    }
    throw new IllegalStateException();
  }
  
  public boolean m()
  {
    if (this.Kt.size() == 1) {
      return ((fw)this.Kt.get(0)).m();
    }
    throw new IllegalStateException();
  }
  
  public int size()
  {
    return this.Kt.size();
  }
  
  public fw ˊ(int paramInt, fw paramfw)
  {
    return (fw)this.Kt.set(paramInt, paramfw);
  }
  
  public void ˎ(fw paramfw)
  {
    Object localObject = paramfw;
    if (paramfw == null) {
      localObject = fy.Ku;
    }
    this.Kt.add(localObject);
  }
  
  public fw ᴿ(int paramInt)
  {
    return (fw)this.Kt.get(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ft
 * JD-Core Version:    0.7.0.1
 */