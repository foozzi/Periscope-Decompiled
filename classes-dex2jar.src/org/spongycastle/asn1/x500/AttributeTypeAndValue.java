package org.spongycastle.asn1.x500;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class AttributeTypeAndValue
  extends ASN1Object
{
  private ASN1ObjectIdentifier agg;
  private ASN1Encodable agh;
  
  public AttributeTypeAndValue(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.agg = paramASN1ObjectIdentifier;
    this.agh = paramASN1Encodable;
  }
  
  private AttributeTypeAndValue(ASN1Sequence paramASN1Sequence)
  {
    this.agg = ((ASN1ObjectIdentifier)paramASN1Sequence.ϲ(0));
    this.agh = paramASN1Sequence.ϲ(1);
  }
  
  public static AttributeTypeAndValue ᑋ(Object paramObject)
  {
    if ((paramObject instanceof AttributeTypeAndValue)) {
      return (AttributeTypeAndValue)paramObject;
    }
    if (paramObject != null) {
      return new AttributeTypeAndValue(ASN1Sequence.ﹾ(paramObject));
    }
    throw new IllegalArgumentException("null value in getInstance()");
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.agg);
    localASN1EncodableVector.ˊ(this.agh);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier gF()
  {
    return this.agg;
  }
  
  public ASN1Encodable gG()
  {
    return this.agh;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.AttributeTypeAndValue
 * JD-Core Version:    0.7.0.1
 */