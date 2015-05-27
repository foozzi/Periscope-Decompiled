package o;

import java.util.Queue;

class ﾝ$if
{
  private final Queue<ᵨ> iU = ﾕ.ᵘ(0);
  
  public ᵨ ˊ(ᵨ.if paramif)
  {
    try
    {
      ᵨ localᵨ2 = (ᵨ)this.iU.poll();
      ᵨ localᵨ1 = localᵨ2;
      if (localᵨ2 == null) {
        localᵨ1 = new ᵨ(paramif);
      }
      return localᵨ1;
    }
    finally {}
  }
  
  public void ˊ(ᵨ paramᵨ)
  {
    try
    {
      paramᵨ.clear();
      this.iU.offer(paramᵨ);
      return;
    }
    finally
    {
      paramᵨ = finally;
      throw paramᵨ;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¾.if
 * JD-Core Version:    0.7.0.1
 */