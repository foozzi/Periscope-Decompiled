package o;

public class anm
{
  @go("access_token")
  public final String Rp;
  @go("body")
  public final String byp;
  
  public anm(String paramString)
  {
    this.Rp = paramString;
    this.byp = null;
  }
  
  public String toString()
  {
    return "hello:" + this.Rp;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.anm
 * JD-Core Version:    0.7.0.1
 */