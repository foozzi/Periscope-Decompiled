package o;

public class ann
{
  @go("room")
  public final String bNR;
  @go("body")
  public final String byp;
  
  public ann(String paramString)
  {
    this.bNR = paramString;
    this.byp = null;
  }
  
  public String toString()
  {
    return "join:" + this.bNR;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ann
 * JD-Core Version:    0.7.0.1
 */