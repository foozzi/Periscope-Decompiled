package o;

import java.util.Queue;

abstract class ა<T extends ᒧ>
{
  private final Queue<T> iq = ﾕ.ᵘ(20);
  
  public void ˊ(T paramT)
  {
    if (this.iq.size() < 20) {
      this.iq.offer(paramT);
    }
  }
  
  protected abstract T ᘇ();
  
  protected T ᙇ()
  {
    ᒧ localᒧ2 = (ᒧ)this.iq.poll();
    ᒧ localᒧ1 = localᒧ2;
    if (localᒧ2 == null) {
      localᒧ1 = ᘇ();
    }
    return localᒧ1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */