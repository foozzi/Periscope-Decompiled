package org.spongycastle.asn1;

import java.io.OutputStream;

public class BERGenerator
  extends ASN1Generator
{
  private boolean aaK;
  private boolean aaL;
  
  protected void fc()
  {
    this.aan.write(0);
    this.aan.write(0);
    if ((this.aaK) && (this.aaL))
    {
      this.aan.write(0);
      this.aan.write(0);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BERGenerator
 * JD-Core Version:    0.7.0.1
 */