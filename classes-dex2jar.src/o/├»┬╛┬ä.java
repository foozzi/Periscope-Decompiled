package o;

public class ﾄ
{
  private Class<?> ni;
  private Class<?> nj;
  
  public ﾄ() {}
  
  public ﾄ(Class<?> paramClass1, Class<?> paramClass2)
  {
    ͺ(paramClass1, paramClass2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (ﾄ)paramObject;
    if (!this.ni.equals(paramObject.ni)) {
      return false;
    }
    return this.nj.equals(paramObject.nj);
  }
  
  public int hashCode()
  {
    return this.ni.hashCode() * 31 + this.nj.hashCode();
  }
  
  public String toString()
  {
    return "MultiClassKey{first=" + this.ni + ", second=" + this.nj + '}';
  }
  
  public void ͺ(Class<?> paramClass1, Class<?> paramClass2)
  {
    this.ni = paramClass1;
    this.nj = paramClass2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¾
 * JD-Core Version:    0.7.0.1
 */