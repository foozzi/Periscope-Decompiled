package o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public class ᐜ
{
  private final Set<ᔨ> lV = Collections.newSetFromMap(new WeakHashMap());
  private final List<ᔨ> lW = new ArrayList();
  private boolean lX;
  
  public void ˊ(ᔨ paramᔨ)
  {
    this.lV.add(paramᔨ);
    if (!this.lX)
    {
      paramᔨ.begin();
      return;
    }
    this.lW.add(paramᔨ);
  }
  
  public void ˋ(ᔨ paramᔨ)
  {
    this.lV.remove(paramᔨ);
    this.lW.remove(paramᔨ);
  }
  
  public void ใ()
  {
    Iterator localIterator = ﾕ.ˊ(this.lV).iterator();
    while (localIterator.hasNext()) {
      ((ᔨ)localIterator.next()).clear();
    }
    this.lW.clear();
  }
  
  public void Ꭲ()
  {
    Iterator localIterator = ﾕ.ˊ(this.lV).iterator();
    while (localIterator.hasNext())
    {
      ᔨ localᔨ = (ᔨ)localIterator.next();
      if ((!localᔨ.isComplete()) && (!localᔨ.isCancelled()))
      {
        localᔨ.pause();
        if (!this.lX) {
          localᔨ.begin();
        } else {
          this.lW.add(localᔨ);
        }
      }
    }
  }
  
  public void ᘄ()
  {
    this.lX = true;
    Iterator localIterator = ﾕ.ˊ(this.lV).iterator();
    while (localIterator.hasNext())
    {
      ᔨ localᔨ = (ᔨ)localIterator.next();
      if (localᔨ.isRunning())
      {
        localᔨ.pause();
        this.lW.add(localᔨ);
      }
    }
  }
  
  public void ᴠ()
  {
    this.lX = false;
    Iterator localIterator = ﾕ.ˊ(this.lV).iterator();
    while (localIterator.hasNext())
    {
      ᔨ localᔨ = (ᔨ)localIterator.next();
      if ((!localᔨ.isComplete()) && (!localᔨ.isCancelled()) && (!localᔨ.isRunning())) {
        localᔨ.begin();
      }
    }
    this.lW.clear();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */