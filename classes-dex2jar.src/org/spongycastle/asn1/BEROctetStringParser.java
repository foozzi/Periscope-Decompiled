package org.spongycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.io.Streams;

public class BEROctetStringParser
  implements ASN1OctetStringParser
{
  private ASN1StreamParser aaT;
  
  BEROctetStringParser(ASN1StreamParser paramASN1StreamParser)
  {
    this.aaT = paramASN1StreamParser;
  }
  
  public InputStream eL()
  {
    return new ConstructedOctetStream(this.aaT);
  }
  
  public ASN1Primitive eN()
  {
    return new BEROctetString(Streams.ۥ(eL()));
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
      throw new ASN1ParsingException("IOException converting stream to byte array: " + localIOException.getMessage(), localIOException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BEROctetStringParser
 * JD-Core Version:    0.7.0.1
 */