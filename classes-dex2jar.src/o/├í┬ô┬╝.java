package o;

import java.util.HashMap;
import java.util.Map;

public class ᓼ
{
  private static final ﾄ lB = new ﾄ();
  private final Map<ﾄ, ᓹ<?, ?>> mb = new HashMap();
  
  public <T, Z> ᓹ<T, Z> ʽ(Class<T> paramClass, Class<Z> paramClass1)
  {
    synchronized (lB)
    {
      lB.ͺ(paramClass, paramClass1);
      paramClass = (ᓹ)this.mb.get(lB);
    }
    paramClass1 = paramClass;
    if (paramClass == null) {
      paramClass1 = ᓽ.ᓶ();
    }
    return paramClass1;
  }
  
  public <T, Z> void ˊ(Class<T> paramClass, Class<Z> paramClass1, ᓹ<T, Z> paramᓹ)
  {
    this.mb.put(new ﾄ(paramClass, paramClass1), paramᓹ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¼
 * JD-Core Version:    0.7.0.1
 */