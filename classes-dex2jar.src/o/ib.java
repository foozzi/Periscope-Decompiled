package o;

public final class ib
  implements gl
{
  private final gt JZ;
  
  public ib(gt paramgt)
  {
    this.JZ = paramgt;
  }
  
  static gk<?> ˊ(gt paramgt, fl paramfl, jy<?> paramjy, gn paramgn)
  {
    paramgn = paramgn.value();
    if (gk.class.isAssignableFrom(paramgn)) {
      return (gk)paramgt.ˋ(jy.ˈ(paramgn)).C();
    }
    if (gl.class.isAssignableFrom(paramgn)) {
      return ((gl)paramgt.ˋ(jy.ˈ(paramgn)).C()).ˊ(paramfl, paramjy);
    }
    throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
  }
  
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    gn localgn = (gn)paramjy.U().getAnnotation(gn.class);
    if (localgn == null) {
      return null;
    }
    return ˊ(this.JZ, paramfl, paramjy, localgn);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ib
 * JD-Core Version:    0.7.0.1
 */