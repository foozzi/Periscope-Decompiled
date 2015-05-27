package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

public class AttributeCertificate
  extends ASN1Object
{
  AlgorithmIdentifier aoP;
  AttributeCertificateInfo ayc;
  DERBitString ayd;
  
  public AttributeCertificate(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() != 3) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    this.ayc = AttributeCertificateInfo.ᵒ(paramASN1Sequence.ϲ(0));
    this.aoP = AlgorithmIdentifier.ᓪ(paramASN1Sequence.ϲ(1));
    this.ayd = DERBitString.ʸ(paramASN1Sequence.ϲ(2));
  }
  
  public static AttributeCertificate ᕝ(Object paramObject)
  {
    if ((paramObject instanceof AttributeCertificate)) {
      return (AttributeCertificate)paramObject;
    }
    if (paramObject != null) {
      return new AttributeCertificate(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ayc);
    localASN1EncodableVector.ˊ(this.aoP);
    localASN1EncodableVector.ˊ(this.ayd);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public AttributeCertificateInfo gR()
  {
    return this.ayc;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.AttributeCertificate
 * JD-Core Version:    0.7.0.1
 */