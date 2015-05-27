package o;

public class ano
{
  @go("room")
  public final String bNR;
  @go("body")
  public final String byp;
  
  public ano(String paramString)
  {
    this.bNR = paramString;
    this.byp = null;
  }
  
  public String toString()
  {
    return "leave:" + this.bNR;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ano
 * JD-Core Version:    0.7.0.1
 */