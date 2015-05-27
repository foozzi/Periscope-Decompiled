package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class CertBag
  extends ASN1Object
{
  private ASN1ObjectIdentifier apU;
  private ASN1Encodable apV;
  
  public CertBag(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.apU = paramASN1ObjectIdentifier;
    this.apV = paramASN1Encodable;
  }
  
  private CertBag(ASN1Sequence paramASN1Sequence)
  {
    this.apU = ((ASN1ObjectIdentifier)paramASN1Sequence.ϲ(0));
    this.apV = ((DERTaggedObject)paramASN1Sequence.ϲ(1)).eY();
  }
  
  public static CertBag ᔊ(Object paramObject)
  {
    if ((paramObject instanceof CertBag)) {
      return (CertBag)paramObject;
    }
    if (paramObject != null) {
      return new CertBag(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.apU);
    localASN1EncodableVector.ˊ(new DERTaggedObject(0, this.apV));
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier fD()
  {
    return this.apU;
  }
  
  public ASN1Encodable fE()
  {
    return this.apV;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.CertBag
 * JD-Core Version:    0.7.0.1
 */