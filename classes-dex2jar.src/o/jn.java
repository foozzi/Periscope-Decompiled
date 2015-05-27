package o;

final class jn
  implements gl
{
  jn(Class paramClass, gk paramgk) {}
  
  public String toString()
  {
    return "Factory[type=" + this.MX.getName() + ",adapter=" + this.MW + "]";
  }
  
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    if (paramjy.U() == this.MX) {
      return this.MW;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jn
 * JD-Core Version:    0.7.0.1
 */