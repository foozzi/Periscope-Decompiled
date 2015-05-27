package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class AttCertValidityPeriod
  extends ASN1Object
{
  ASN1GeneralizedTime aya;
  ASN1GeneralizedTime ayb;
  
  private AttCertValidityPeriod(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() != 2) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    this.aya = ASN1GeneralizedTime.ᵥ(paramASN1Sequence.ϲ(0));
    this.ayb = ASN1GeneralizedTime.ᵥ(paramASN1Sequence.ϲ(1));
  }
  
  public static AttCertValidityPeriod ᔾ(Object paramObject)
  {
    if ((paramObject instanceof AttCertValidityPeriod)) {
      return (AttCertValidityPeriod)paramObject;
    }
    if (paramObject != null) {
      return new AttCertValidityPeriod(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aya);
    localASN1EncodableVector.ˊ(this.ayb);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1GeneralizedTime gO()
  {
    return this.aya;
  }
  
  public ASN1GeneralizedTime gP()
  {
    return this.ayb;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.AttCertValidityPeriod
 * JD-Core Version:    0.7.0.1
 */