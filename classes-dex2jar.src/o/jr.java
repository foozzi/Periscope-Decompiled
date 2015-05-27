package o;

final class jr
  implements gl
{
  jr(Class paramClass, gk paramgk) {}
  
  public String toString()
  {
    return "Factory[typeHierarchy=" + this.Nc.getName() + ",adapter=" + this.MW + "]";
  }
  
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    if (this.Nc.isAssignableFrom(paramjy.U())) {
      return this.MW;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jr
 * JD-Core Version:    0.7.0.1
 */