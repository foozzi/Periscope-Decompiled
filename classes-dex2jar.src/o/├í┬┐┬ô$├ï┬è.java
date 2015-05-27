package o;

import java.util.concurrent.FutureTask;

class ΐ$ˊ<T>
  extends FutureTask<T>
  implements Comparable<ˊ<?>>
{
  private final int order;
  private final int priority;
  
  public ΐ$ˊ(Runnable paramRunnable, T paramT, int paramInt)
  {
    super(paramRunnable, paramT);
    if (!(paramRunnable instanceof כּ)) {
      throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
    }
    this.priority = ((כּ)paramRunnable).getPriority();
    this.order = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ˊ))
    {
      paramObject = (ˊ)paramObject;
      return (this.order == paramObject.order) && (this.priority == paramObject.priority);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.priority * 31 + this.order;
  }
  
  public int ˊ(ˊ<?> paramˊ)
  {
    int j = this.priority - paramˊ.priority;
    int i = j;
    if (j == 0) {
      i = this.order - paramˊ.order;
    }
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿.Ë
 * JD-Core Version:    0.7.0.1
 */