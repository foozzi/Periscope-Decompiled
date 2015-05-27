package org.spongycastle.asn1;

import java.io.IOException;

public class DERSequenceParser
  implements ASN1SequenceParser
{
  private ASN1StreamParser aaT;
  
  DERSequenceParser(ASN1StreamParser paramASN1StreamParser)
  {
    this.aaT = paramASN1StreamParser;
  }
  
  public ASN1Primitive eN()
  {
    return new DERSequence(this.aaT.eV());
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
      throw new IllegalStateException(localIOException.getMessage());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERSequenceParser
 * JD-Core Version:    0.7.0.1
 */