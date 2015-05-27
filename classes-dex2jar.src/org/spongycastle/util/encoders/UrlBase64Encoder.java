package org.spongycastle.util.encoders;

public class UrlBase64Encoder
  extends Base64Encoder
{
  public UrlBase64Encoder()
  {
    this.bke[(this.bke.length - 2)] = 45;
    this.bke[(this.bke.length - 1)] = 95;
    this.bkf = 46;
    td();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.encoders.UrlBase64Encoder
 * JD-Core Version:    0.7.0.1
 */