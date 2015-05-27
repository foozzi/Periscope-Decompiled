package o;

import java.lang.reflect.Type;

public class jy<T>
{
  final Type Mb;
  final Class<? super T> Nf;
  final int hY;
  
  protected jy()
  {
    this.Mb = ʿ(getClass());
    this.Nf = gs.getRawType(this.Mb);
    this.hY = this.Mb.hashCode();
  }
  
  jy(Type paramType)
  {
    this.Mb = gs.ᐝ((Type)gr.יּ(paramType));
    this.Nf = gs.getRawType(this.Mb);
    this.hY = this.Mb.hashCode();
  }
  
  public static jy<?> ʽ(Type paramType)
  {
    return new jy(paramType);
  }
  
  static Type ʿ(Class<?> paramClass)
  {
    paramClass = paramClass.getGenericSuperclass();
    if ((paramClass instanceof Class)) {
      throw new RuntimeException("Missing type parameter.");
    }
    return gs.ᐝ(((java.lang.reflect.ParameterizedType)paramClass).getActualTypeArguments()[0]);
  }
  
  public static <T> jy<T> ˈ(Class<T> paramClass)
  {
    return new jy(paramClass);
  }
  
  public final Class<? super T> U()
  {
    return this.Nf;
  }
  
  public final Type V()
  {
    return this.Mb;
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof jy)) && (gs.equals(this.Mb, ((jy)paramObject).Mb));
  }
  
  public final int hashCode()
  {
    return this.hY;
  }
  
  public final String toString()
  {
    return gs.typeToString(this.Mb);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jy
 * JD-Core Version:    0.7.0.1
 */