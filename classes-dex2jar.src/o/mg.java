package o;

public class mg<T extends lw>
{
  @go("auth_token")
  private final T Qf;
  @go("id")
  private final long id;
  
  public mg(T paramT, long paramLong)
  {
    this.Qf = paramT;
    this.id = paramLong;
  }
  
  public T aX()
  {
    return this.Qf;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (mg)paramObject;
    if (this.id != paramObject.id) {
      return false;
    }
    return this.Qf != null ? this.Qf.equals(paramObject.Qf) : paramObject.Qf == null;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public int hashCode()
  {
    int i;
    if (this.Qf != null) {
      i = this.Qf.hashCode();
    } else {
      i = 0;
    }
    return i * 31 + (int)(this.id ^ this.id >>> 32);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mg
 * JD-Core Version:    0.7.0.1
 */