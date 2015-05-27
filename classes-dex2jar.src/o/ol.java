package o;

import java.util.Collections;
import java.util.Map;

class ol
  extends gk<T>
{
  ol(ok paramok, gk paramgk, jy paramjy) {}
  
  public void ˊ(kc paramkc, T paramT)
  {
    this.Sk.ˊ(paramkc, paramT);
  }
  
  public T ˋ(jz paramjz)
  {
    paramjz = this.Sk.ˋ(paramjz);
    if (Map.class.isAssignableFrom(this.Sl.U()))
    {
      if (paramjz == null) {
        return Collections.EMPTY_MAP;
      }
      return Collections.unmodifiableMap((Map)paramjz);
    }
    return paramjz;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ol
 * JD-Core Version:    0.7.0.1
 */