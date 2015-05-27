package o;

final class jo
  implements gl
{
  jo(Class paramClass1, Class paramClass2, gk paramgk) {}
  
  public String toString()
  {
    return "Factory[type=" + this.MZ.getName() + "+" + this.MY.getName() + ",adapter=" + this.MW + "]";
  }
  
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    paramfl = paramjy.U();
    if ((paramfl == this.MY) || (paramfl == this.MZ)) {
      return this.MW;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jo
 * JD-Core Version:    0.7.0.1
 */