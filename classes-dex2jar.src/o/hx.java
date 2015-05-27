package o;

import java.lang.reflect.GenericArrayType;

final class hx
  implements gl
{
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    paramjy = paramjy.V();
    if ((!(paramjy instanceof GenericArrayType)) && ((!(paramjy instanceof Class)) || (!((Class)paramjy).isArray()))) {
      return null;
    }
    paramjy = gs.ʻ(paramjy);
    return new hw(paramfl, paramfl.ˊ(jy.ʽ(paramjy)), gs.getRawType(paramjy));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hx
 * JD-Core Version:    0.7.0.1
 */