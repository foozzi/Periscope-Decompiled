package o;

public class lh
  extends Exception
{
  private String Pw = "";
  private lg Px = lg.OQ;
  
  public lh(String paramString)
  {
    this.Pw = paramString;
  }
  
  public lh(lg paramlg)
  {
    this.Px = paramlg;
  }
  
  public lg aE()
  {
    return this.Px;
  }
  
  public String toString()
  {
    String str2 = this.Px.toString();
    String str1 = str2;
    if (this.Pw.length() > 0) {
      str1 = str2 + " . " + this.Pw;
    }
    return str1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lh
 * JD-Core Version:    0.7.0.1
 */