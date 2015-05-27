package org.spongycastle.x509;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x509.Attribute;

public class X509Attribute
  extends ASN1Object
{
  Attribute bkD;
  
  X509Attribute(ASN1Encodable paramASN1Encodable)
  {
    this.bkD = Attribute.ᕐ(paramASN1Encodable);
  }
  
  public ASN1Primitive ez()
  {
    return this.bkD.ez();
  }
  
  public String ts()
  {
    return this.bkD.gQ().getId();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509Attribute
 * JD-Core Version:    0.7.0.1
 */