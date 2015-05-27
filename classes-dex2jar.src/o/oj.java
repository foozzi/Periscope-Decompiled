package o;

import java.util.Collections;
import java.util.List;

class oj
  extends gk<T>
{
  oj(oi paramoi, gk paramgk, jy paramjy) {}
  
  public void ˊ(kc paramkc, T paramT)
  {
    this.Sk.ˊ(paramkc, paramT);
  }
  
  public T ˋ(jz paramjz)
  {
    paramjz = this.Sk.ˋ(paramjz);
    if (List.class.isAssignableFrom(this.Sl.U()))
    {
      if (paramjz == null) {
        return Collections.EMPTY_LIST;
      }
      return Collections.unmodifiableList((List)paramjz);
    }
    return paramjz;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.oj
 * JD-Core Version:    0.7.0.1
 */