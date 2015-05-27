package o;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

public final class hy
  implements gl
{
  private final gt JZ;
  
  public hy(gt paramgt)
  {
    this.JZ = paramgt;
  }
  
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    Type localType = paramjy.V();
    Class localClass = paramjy.U();
    if (!Collection.class.isAssignableFrom(localClass)) {
      return null;
    }
    localType = gs.ˊ(localType, localClass);
    return new if(paramfl, localType, paramfl.ˊ(jy.ʽ(localType)), this.JZ.ˋ(paramjy));
  }
  
  static final class if<E>
    extends gk<Collection<E>>
  {
    private final gk<E> LD;
    private final ho<? extends Collection<E>> LE;
    
    public if(fl paramfl, Type paramType, gk<E> paramgk, ho<? extends Collection<E>> paramho)
    {
      this.LD = new iq(paramfl, paramgk, paramType);
      this.LE = paramho;
    }
    
    public Collection<E> ʼ(jz paramjz)
    {
      if (paramjz.J() == kb.NB)
      {
        paramjz.nextNull();
        return null;
      }
      Collection localCollection = (Collection)this.LE.C();
      paramjz.beginArray();
      while (paramjz.hasNext()) {
        localCollection.add(this.LD.ˋ(paramjz));
      }
      paramjz.endArray();
      return localCollection;
    }
    
    public void ˊ(kc paramkc, Collection<E> paramCollection)
    {
      if (paramCollection == null)
      {
        paramkc.T();
        return;
      }
      paramkc.P();
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Object localObject = paramCollection.next();
        this.LD.ˊ(paramkc, localObject);
      }
      paramkc.Q();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hy
 * JD-Core Version:    0.7.0.1
 */