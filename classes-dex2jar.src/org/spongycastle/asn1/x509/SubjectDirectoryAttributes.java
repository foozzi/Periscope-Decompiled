package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class SubjectDirectoryAttributes
  extends ASN1Object
{
  private Vector aAy;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    Enumeration localEnumeration = this.aAy.elements();
    while (localEnumeration.hasMoreElements()) {
      localASN1EncodableVector.ˊ((Attribute)localEnumeration.nextElement());
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.SubjectDirectoryAttributes
 * JD-Core Version:    0.7.0.1
 */