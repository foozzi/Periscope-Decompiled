package org.spongycastle.jce.interfaces;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

public abstract interface PKCS12BagAttributeCarrier
{
  public abstract Enumeration nA();
  
  public abstract void ˋ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable);
  
  public abstract ASN1Encodable ͺ(ASN1ObjectIdentifier paramASN1ObjectIdentifier);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier
 * JD-Core Version:    0.7.0.1
 */