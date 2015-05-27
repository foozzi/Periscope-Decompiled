package o;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class iq<T>
  extends gk<T>
{
  private final gk<T> Kh;
  private final fl Ma;
  private final Type Mb;
  
  iq(fl paramfl, gk<T> paramgk, Type paramType)
  {
    this.Ma = paramfl;
    this.Kh = paramgk;
    this.Mb = paramType;
  }
  
  private Type ˋ(Type paramType, Object paramObject)
  {
    Object localObject = paramType;
    if (paramObject != null) {
      if ((paramType != Object.class) && (!(paramType instanceof TypeVariable)))
      {
        localObject = paramType;
        if (!(paramType instanceof Class)) {}
      }
      else
      {
        localObject = paramObject.getClass();
      }
    }
    return localObject;
  }
  
  public void ˊ(kc paramkc, T paramT)
  {
    gk localgk = this.Kh;
    Type localType = ˋ(this.Mb, paramT);
    if (localType != this.Mb)
    {
      localgk = this.Ma.ˊ(jy.ʽ(localType));
      if (((localgk instanceof ik.if)) && (!(this.Kh instanceof ik.if))) {
        localgk = this.Kh;
      }
    }
    localgk.ˊ(paramkc, paramT);
  }
  
  public T ˋ(jz paramjz)
  {
    return this.Kh.ˋ(paramjz);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.iq
 * JD-Core Version:    0.7.0.1
 */