package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class PolicyInformation
  extends ASN1Object
{
  private ASN1ObjectIdentifier aAp;
  private ASN1Sequence aAq;
  
  private PolicyInformation(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.size() < 1) || (paramASN1Sequence.size() > 2)) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    this.aAp = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0));
    if (paramASN1Sequence.size() > 1) {
      this.aAq = ASN1Sequence.ﹾ(paramASN1Sequence.ϲ(1));
    }
  }
  
  public static PolicyInformation ז(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof PolicyInformation))) {
      return (PolicyInformation)paramObject;
    }
    return new PolicyInformation(ASN1Sequence.ﹾ(paramObject));
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aAp);
    if (this.aAq != null) {
      localASN1EncodableVector.ˊ(this.aAq);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier hQ()
  {
    return this.aAp;
  }
  
  public ASN1Sequence hR()
  {
    return this.aAq;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.PolicyInformation
 * JD-Core Version:    0.7.0.1
 */