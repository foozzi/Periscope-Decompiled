package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class IetfAttrSyntax
  extends ASN1Object
{
  Vector azA;
  GeneralNames azz;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    if (this.azz != null) {
      localASN1EncodableVector1.ˊ(new DERTaggedObject(0, this.azz));
    }
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    Enumeration localEnumeration = this.azA.elements();
    while (localEnumeration.hasMoreElements()) {
      localASN1EncodableVector2.ˊ((ASN1Encodable)localEnumeration.nextElement());
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    return new DERSequence(localASN1EncodableVector1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.IetfAttrSyntax
 * JD-Core Version:    0.7.0.1
 */