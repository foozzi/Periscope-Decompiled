package o;

import java.util.Date;

final class amy
  extends ane
{
  private final Date bNC;
  private final Date bND;
  
  amy(Date paramDate1, Date paramDate2)
  {
    if (paramDate1 == null) {
      throw new NullPointerException("Null start");
    }
    this.bNC = paramDate1;
    if (paramDate2 == null) {
      throw new NullPointerException("Null end");
    }
    this.bND = paramDate2;
  }
  
  public Date BO()
  {
    return this.bNC;
  }
  
  public Date BP()
  {
    return this.bND;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof ane))
    {
      paramObject = (ane)paramObject;
      return (this.bNC.equals(paramObject.BO())) && (this.bND.equals(paramObject.BP()));
    }
    return false;
  }
  
  public int hashCode()
  {
    return (0xF4243 ^ this.bNC.hashCode()) * 1000003 ^ this.bND.hashCode();
  }
  
  public String toString()
  {
    return "Broadcast{start=" + this.bNC + ", " + "end=" + this.bND + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amy
 * JD-Core Version:    0.7.0.1
 */