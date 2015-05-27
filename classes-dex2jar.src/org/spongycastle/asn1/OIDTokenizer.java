package org.spongycastle.asn1;

public class OIDTokenizer
{
  private String aby;
  private int index;
  
  public OIDTokenizer(String paramString)
  {
    this.aby = paramString;
    this.index = 0;
  }
  
  public boolean hasMoreTokens()
  {
    return this.index != -1;
  }
  
  public String nextToken()
  {
    if (this.index == -1) {
      return null;
    }
    int i = this.aby.indexOf('.', this.index);
    if (i == -1)
    {
      str = this.aby.substring(this.index);
      this.index = -1;
      return str;
    }
    String str = this.aby.substring(this.index, i);
    this.index = (i + 1);
    return str;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.OIDTokenizer
 * JD-Core Version:    0.7.0.1
 */