package org.spongycastle.asn1.x500;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERSet;

public class RDN
  extends ASN1Object
{
  private ASN1Set awf;
  
  public RDN(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(paramASN1ObjectIdentifier);
    localASN1EncodableVector.ˊ(paramASN1Encodable);
    this.awf = new DERSet(new DERSequence(localASN1EncodableVector));
  }
  
  private RDN(ASN1Set paramASN1Set)
  {
    this.awf = paramASN1Set;
  }
  
  public RDN(AttributeTypeAndValue[] paramArrayOfAttributeTypeAndValue)
  {
    this.awf = new DERSet(paramArrayOfAttributeTypeAndValue);
  }
  
  public static RDN ᑦ(Object paramObject)
  {
    if ((paramObject instanceof RDN)) {
      return (RDN)paramObject;
    }
    if (paramObject != null) {
      return new RDN(ASN1Set.ɩ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.awf;
  }
  
  public boolean gH()
  {
    return this.awf.size() > 1;
  }
  
  public AttributeTypeAndValue gI()
  {
    if (this.awf.size() == 0) {
      return null;
    }
    return AttributeTypeAndValue.ᑋ(this.awf.ϲ(0));
  }
  
  public AttributeTypeAndValue[] gJ()
  {
    AttributeTypeAndValue[] arrayOfAttributeTypeAndValue = new AttributeTypeAndValue[this.awf.size()];
    int i = 0;
    while (i != arrayOfAttributeTypeAndValue.length)
    {
      arrayOfAttributeTypeAndValue[i] = AttributeTypeAndValue.ᑋ(this.awf.ϲ(i));
      i += 1;
    }
    return arrayOfAttributeTypeAndValue;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.RDN
 * JD-Core Version:    0.7.0.1
 */