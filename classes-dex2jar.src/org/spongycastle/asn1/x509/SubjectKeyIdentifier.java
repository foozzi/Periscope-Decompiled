package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;

public class SubjectKeyIdentifier
  extends ASN1Object
{
  private byte[] aAz;
  
  public SubjectKeyIdentifier(byte[] paramArrayOfByte)
  {
    this.aAz = paramArrayOfByte;
  }
  
  public ASN1Primitive ez()
  {
    return new DEROctetString(this.aAz);
  }
  
  public byte[] gY()
  {
    return this.aAz;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.SubjectKeyIdentifier
 * JD-Core Version:    0.7.0.1
 */