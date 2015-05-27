package org.spongycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

public class DEROctetStringParser
  implements ASN1OctetStringParser
{
  private DefiniteLengthInputStream abl;
  
  DEROctetStringParser(DefiniteLengthInputStream paramDefiniteLengthInputStream)
  {
    this.abl = paramDefiniteLengthInputStream;
  }
  
  public InputStream eL()
  {
    return this.abl;
  }
  
  public ASN1Primitive eN()
  {
    return new DEROctetString(this.abl.toByteArray());
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
 * Qualified Name:     org.spongycastle.asn1.DEROctetStringParser
 * JD-Core Version:    0.7.0.1
 */