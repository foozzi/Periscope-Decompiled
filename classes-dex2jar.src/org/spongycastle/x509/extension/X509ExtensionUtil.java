package org.spongycastle.x509.extension;

import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;

public class X509ExtensionUtil
{
  public static ASN1Primitive ᑦ(byte[] paramArrayOfByte)
  {
    return ASN1Primitive.ՙ(((ASN1OctetString)ASN1Primitive.ՙ(paramArrayOfByte)).eM());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.extension.X509ExtensionUtil
 * JD-Core Version:    0.7.0.1
 */