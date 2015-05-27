package o;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;

final class ᴠ
{
  private final Map<ﮆ, ᴠ.if> iQ = new HashMap();
  private final ᴠ.ˊ iR = new ᴠ.ˊ(null);
  
  void ʼ(ﮆ paramﮆ)
  {
    ᴠ.if localif1;
    try
    {
      ᴠ.if localif2 = (ᴠ.if)this.iQ.get(paramﮆ);
      localif1 = localif2;
      if (localif2 == null)
      {
        localif1 = this.iR.ᵚ();
        this.iQ.put(paramﮆ, localif1);
      }
      localif1.iT += 1;
    }
    finally {}
    localif1.iS.lock();
  }
  
  void ʽ(ﮆ paramﮆ)
  {
    ᴠ.if localif1;
    try
    {
      localif1 = (ᴠ.if)this.iQ.get(paramﮆ);
      if ((localif1 == null) || (localif1.iT <= 0))
      {
        paramﮆ = new StringBuilder().append("Cannot release a lock that is not held, key: ").append(paramﮆ).append(", interestedThreads: ");
        if (localif1 == null) {
          i = 0;
        } else {
          i = localif1.iT;
        }
        throw new IllegalArgumentException(i);
      }
      int i = localif1.iT - 1;
      localif1.iT = i;
      if (i == 0)
      {
        ᴠ.if localif2 = (ᴠ.if)this.iQ.remove(paramﮆ);
        if (!localif2.equals(localif1)) {
          throw new IllegalStateException("Removed the wrong lock, expected to remove: " + localif1 + ", but actually removed: " + localif2 + ", key: " + paramﮆ);
        }
        this.iR.ˊ(localif2);
      }
    }
    finally {}
    localif1.iS.unlock();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´ 
 * JD-Core Version:    0.7.0.1
 */