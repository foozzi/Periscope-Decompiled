package o;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class hw<E>
  extends gk<Object>
{
  public static final gl LA = new hx();
  private final Class<E> LB;
  private final gk<E> LC;
  
  public hw(fl paramfl, gk<E> paramgk, Class<E> paramClass)
  {
    this.LC = new iq(paramfl, paramgk, paramClass);
    this.LB = paramClass;
  }
  
  public void ˊ(kc paramkc, Object paramObject)
  {
    if (paramObject == null)
    {
      paramkc.T();
      return;
    }
    paramkc.P();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      this.LC.ˊ(paramkc, localObject);
      i += 1;
    }
    paramkc.Q();
  }
  
  public Object ˋ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramjz.beginArray();
    while (paramjz.hasNext()) {
      localArrayList.add(this.LC.ˋ(paramjz));
    }
    paramjz.endArray();
    paramjz = Array.newInstance(this.LB, localArrayList.size());
    int i = 0;
    while (i < localArrayList.size())
    {
      Array.set(paramjz, i, localArrayList.get(i));
      i += 1;
    }
    return paramjz;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hw
 * JD-Core Version:    0.7.0.1
 */