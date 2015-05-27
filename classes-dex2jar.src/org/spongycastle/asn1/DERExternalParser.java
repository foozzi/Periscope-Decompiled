package org.spongycastle.asn1;

import java.io.IOException;

public class DERExternalParser
  implements ASN1Encodable, InMemoryRepresentable
{
  private ASN1StreamParser aaT;
  
  public DERExternalParser(ASN1StreamParser paramASN1StreamParser)
  {
    this.aaT = paramASN1StreamParser;
  }
  
  public ASN1Primitive eN()
  {
    try
    {
      DERExternal localDERExternal = new DERExternal(this.aaT.eV());
      return localDERExternal;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new ASN1Exception(localIllegalArgumentException.getMessage(), localIllegalArgumentException);
    }
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
      throw new ASN1ParsingException("unable to get DER object", localIOException);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new ASN1ParsingException("unable to get DER object", localIllegalArgumentException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERExternalParser
 * JD-Core Version:    0.7.0.1
 */