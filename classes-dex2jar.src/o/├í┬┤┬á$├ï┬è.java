package o;

import java.util.ArrayDeque;
import java.util.Queue;

class ᴠ$ˊ
{
  private final Queue<ᴠ.if> iU = new ArrayDeque();
  
  void ˊ(ᴠ.if paramif)
  {
    synchronized (this.iU)
    {
      if (this.iU.size() < 10) {
        this.iU.offer(paramif);
      }
      return;
    }
  }
  
  ᴠ.if ᵚ()
  {
    synchronized (this.iU)
    {
      ᴠ.if localif = (ᴠ.if)this.iU.poll();
    }
    ??? = localObject1;
    if (localObject1 == null) {
      ??? = new ᴠ.if(null);
    }
    return ???;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´ .Ë
 * JD-Core Version:    0.7.0.1
 */