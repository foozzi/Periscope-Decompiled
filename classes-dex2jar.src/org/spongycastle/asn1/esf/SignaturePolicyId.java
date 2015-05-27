package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class SignaturePolicyId
  extends ASN1Object
{
  private OtherHashAlgAndValue akP;
  private SigPolicyQualifiers akQ;
  private ASN1ObjectIdentifier akg;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.akg);
    localASN1EncodableVector.ˊ(this.akP);
    if (this.akQ != null) {
      localASN1EncodableVector.ˊ(this.akQ);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.SignaturePolicyId
 * JD-Core Version:    0.7.0.1
 */