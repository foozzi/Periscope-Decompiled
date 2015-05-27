package org.spongycastle.asn1;

import java.io.IOException;

public class BERApplicationSpecificParser
  implements ASN1ApplicationSpecificParser
{
  private final ASN1StreamParser aaG;
  private final int tag;
  
  BERApplicationSpecificParser(int paramInt, ASN1StreamParser paramASN1StreamParser)
  {
    this.tag = paramInt;
    this.aaG = paramASN1StreamParser;
  }
  
  public ASN1Primitive eN()
  {
    return new BERApplicationSpecific(this.tag, this.aaG.eV());
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
 * Qualified Name:     org.spongycastle.asn1.BERApplicationSpecificParser
 * JD-Core Version:    0.7.0.1
 */