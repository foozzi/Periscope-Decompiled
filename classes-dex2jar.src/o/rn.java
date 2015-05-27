package o;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class rn
  implements re<rp>, rm, rp
{
  private final List<rp> Xn = new ArrayList();
  private final AtomicBoolean Xo = new AtomicBoolean(false);
  private final AtomicReference<Throwable> Xp = new AtomicReference(null);
  
  public static boolean ᒡ(Object paramObject)
  {
    try
    {
      re localre = (re)paramObject;
      rp localrp = (rp)paramObject;
      paramObject = (rm)paramObject;
      return (localre != null) && (localrp != null) && (paramObject != null);
    }
    catch (ClassCastException paramObject) {}
    return false;
  }
  
  public boolean cQ()
  {
    Iterator localIterator = cj().iterator();
    while (localIterator.hasNext()) {
      if (!((rp)localIterator.next()).isFinished()) {
        return false;
      }
    }
    return true;
  }
  
  public Collection<rp> cj()
  {
    try
    {
      Collection localCollection = Collections.unmodifiableCollection(this.Xn);
      return localCollection;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int compareTo(Object paramObject)
  {
    return rh.ˊ(this, paramObject);
  }
  
  public boolean isFinished()
  {
    return this.Xo.get();
  }
  
  public void ˊ(rp paramrp)
  {
    try
    {
      this.Xn.add(paramrp);
      return;
    }
    finally
    {
      paramrp = finally;
      throw paramrp;
    }
  }
  
  public rh є()
  {
    return rh.Xf;
  }
  
  public void ᐝ(Throwable paramThrowable)
  {
    this.Xp.set(paramThrowable);
  }
  
  public void ᔊ(boolean paramBoolean)
  {
    try
    {
      this.Xo.set(paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.rn
 * JD-Core Version:    0.7.0.1
 */