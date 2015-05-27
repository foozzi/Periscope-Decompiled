package o;

final class jl
  implements gl
{
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    paramjy = paramjy.U();
    if ((!Enum.class.isAssignableFrom(paramjy)) || (paramjy == Enum.class)) {
      return null;
    }
    paramfl = paramjy;
    if (!paramjy.isEnum()) {
      paramfl = paramjy.getSuperclass();
    }
    return new ir.if(paramfl);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jl
 * JD-Core Version:    0.7.0.1
 */