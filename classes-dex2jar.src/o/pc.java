package o;

import java.lang.reflect.Method;

final class pc
{
  final pf Ut;
  final Class<?> Uu;
  String Uv;
  final Method method;
  
  pc(Method paramMethod, pf parampf, Class<?> paramClass)
  {
    this.method = paramMethod;
    this.Ut = parampf;
    this.Uu = paramClass;
  }
  
  private void ca()
  {
    try
    {
      if (this.Uv == null)
      {
        StringBuilder localStringBuilder = new StringBuilder(64);
        localStringBuilder.append(this.method.getDeclaringClass().getName());
        localStringBuilder.append('#').append(this.method.getName());
        localStringBuilder.append('(').append(this.Uu.getName());
        this.Uv = localStringBuilder.toString();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof pc))
    {
      ca();
      paramObject = (pc)paramObject;
      paramObject.ca();
      return this.Uv.equals(paramObject.Uv);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.method.hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pc
 * JD-Core Version:    0.7.0.1
 */