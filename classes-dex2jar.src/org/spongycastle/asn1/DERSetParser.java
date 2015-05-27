package org.spongycastle.asn1;

import java.io.IOException;

public class DERSetParser
  implements ASN1SetParser
{
  private ASN1StreamParser aaT;
  
  DERSetParser(ASN1StreamParser paramASN1StreamParser)
  {
    this.aaT = paramASN1StreamParser;
  }
  
  public ASN1Primitive eN()
  {
    return new DERSet(this.aaT.eV(), false);
  }
  
  public ASN1Primitive ez()
  {
    try
    {
      ASN1Primitive localASN1Primitive = eN();
      return localASN1Primitive;
    }
    catch (IOException localIOException)
    {
      throw new ASN1ParsingException(localIOException.getMessage(), localIOException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERSetParser
 * JD-Core Version:    0.7.0.1
 */