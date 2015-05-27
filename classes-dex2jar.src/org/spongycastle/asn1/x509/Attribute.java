package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.DERSequence;

public class Attribute
  extends ASN1Object
{
  private ASN1ObjectIdentifier aeh;
  private ASN1Set aei;
  
  private Attribute(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() != 2) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    this.aeh = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0));
    this.aei = ASN1Set.ɩ(paramASN1Sequence.ϲ(1));
  }
  
  public static Attribute ᕐ(Object paramObject)
  {
    if ((paramObject instanceof Attribute)) {
      return (Attribute)paramObject;
    }
    if (paramObject != null) {
      return new Attribute(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aeh);
    localASN1EncodableVector.ˊ(this.aei);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier gQ()
  {
    return new ASN1ObjectIdentifier(this.aeh.getId());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.Attribute
 * JD-Core Version:    0.7.0.1
 */