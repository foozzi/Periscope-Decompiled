package o;

import java.util.HashMap;
import java.util.Map;

public class ҭ
{
  private static final ﾄ lB = new ﾄ();
  private final Map<ﾄ, ғ<?, ?>> lC = new HashMap();
  
  public <Z, R> ғ<Z, R> ʼ(Class<Z> paramClass, Class<R> paramClass1)
  {
    if (paramClass.equals(paramClass1)) {
      return Ү.ٳ();
    }
    ғ localғ;
    synchronized (lB)
    {
      lB.ͺ(paramClass, paramClass1);
      localғ = (ғ)this.lC.get(lB);
    }
    if (localғ == null) {
      throw new IllegalArgumentException("No transcoder registered for " + paramClass + " and " + paramClass1);
    }
    return localғ;
  }
  
  public <Z, R> void ˊ(Class<Z> paramClass, Class<R> paramClass1, ғ<Z, R> paramғ)
  {
    this.lC.put(new ﾄ(paramClass, paramClass1), paramғ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ò­
 * JD-Core Version:    0.7.0.1
 */