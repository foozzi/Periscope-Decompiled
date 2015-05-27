package o;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public class rf<E extends re,  extends rp,  extends rm>
  extends PriorityBlockingQueue<E>
{
  final Queue<E> Xc = new LinkedList();
  private final ReentrantLock Xd = new ReentrantLock();
  
  public E cR()
  {
    return ˋ(0, null, null);
  }
  
  public E cS()
  {
    try
    {
      re localre = ˋ(1, null, null);
      return localre;
    }
    catch (InterruptedException localInterruptedException) {}
    return null;
  }
  
  public E cT()
  {
    try
    {
      re localre = ˋ(2, null, null);
      return localre;
    }
    catch (InterruptedException localInterruptedException) {}
    return null;
  }
  
  public void cU()
  {
    try
    {
      this.Xd.lock();
      Iterator localIterator = this.Xc.iterator();
      while (localIterator.hasNext())
      {
        re localre = (re)localIterator.next();
        if (ˊ(localre))
        {
          super.offer(localre);
          localIterator.remove();
        }
      }
      return;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public void clear()
  {
    try
    {
      this.Xd.lock();
      this.Xc.clear();
      super.clear();
      return;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public boolean contains(Object paramObject)
  {
    try
    {
      this.Xd.lock();
      if (!super.contains(paramObject))
      {
        bool = this.Xc.contains(paramObject);
        if (!bool) {}
      }
      else
      {
        bool = true;
        break label37;
      }
      boolean bool = false;
      label37:
      return bool;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public int drainTo(Collection<? super E> paramCollection)
  {
    try
    {
      this.Xd.lock();
      int i = super.drainTo(paramCollection);
      int j = this.Xc.size();
      while (!this.Xc.isEmpty()) {
        paramCollection.add(this.Xc.poll());
      }
      return i + j;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public int drainTo(Collection<? super E> paramCollection, int paramInt)
  {
    try
    {
      this.Xd.lock();
      int i = super.drainTo(paramCollection, paramInt);
      while ((!this.Xc.isEmpty()) && (i <= paramInt))
      {
        paramCollection.add(this.Xc.poll());
        i += 1;
      }
      return i;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public boolean remove(Object paramObject)
  {
    try
    {
      this.Xd.lock();
      if (!super.remove(paramObject))
      {
        bool = this.Xc.remove(paramObject);
        if (!bool) {}
      }
      else
      {
        bool = true;
        break label37;
      }
      boolean bool = false;
      label37:
      return bool;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    try
    {
      this.Xd.lock();
      boolean bool1 = super.removeAll(paramCollection);
      boolean bool2 = this.Xc.removeAll(paramCollection);
      return bool1 | bool2;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public int size()
  {
    try
    {
      this.Xd.lock();
      int i = this.Xc.size();
      int j = super.size();
      return i + j;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public Object[] toArray()
  {
    try
    {
      this.Xd.lock();
      Object[] arrayOfObject = ˊ(super.toArray(), this.Xc.toArray());
      return arrayOfObject;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    try
    {
      this.Xd.lock();
      paramArrayOfT = ˊ(super.toArray(paramArrayOfT), this.Xc.toArray(paramArrayOfT));
      return paramArrayOfT;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  E ˊ(int paramInt, Long paramLong, TimeUnit paramTimeUnit)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      return (re)super.take();
    case 1: 
      return (re)super.peek();
    case 2: 
      return (re)super.poll();
    case 3: 
      return (re)super.poll(paramLong.longValue(), paramTimeUnit);
    }
    return null;
  }
  
  public E ˊ(long paramLong, TimeUnit paramTimeUnit)
  {
    return ˋ(3, Long.valueOf(paramLong), paramTimeUnit);
  }
  
  boolean ˊ(int paramInt, E paramE)
  {
    try
    {
      this.Xd.lock();
      if (paramInt == 1) {
        super.remove(paramE);
      }
      boolean bool = this.Xc.offer(paramE);
      return bool;
    }
    finally
    {
      this.Xd.unlock();
    }
  }
  
  boolean ˊ(E paramE)
  {
    return paramE.cQ();
  }
  
  <T> T[] ˊ(T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    int i = paramArrayOfT1.length;
    int j = paramArrayOfT2.length;
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT1.getClass().getComponentType(), i + j);
    System.arraycopy(paramArrayOfT1, 0, arrayOfObject, 0, i);
    System.arraycopy(paramArrayOfT2, 0, arrayOfObject, i, j);
    return arrayOfObject;
  }
  
  E ˋ(int paramInt, Long paramLong, TimeUnit paramTimeUnit)
  {
    re localre;
    for (;;)
    {
      localre = ˊ(paramInt, paramLong, paramTimeUnit);
      if (localre == null) {
        break;
      }
      if (ˊ(localre)) {
        return localre;
      }
      ˊ(paramInt, localre);
    }
    return localre;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.rf
 * JD-Core Version:    0.7.0.1
 */