package org.spongycastle.asn1.ess;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class SigningCertificate
  extends ASN1Object
{
  ASN1Sequence ahU;
  ASN1Sequence ald;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahU);
    if (this.ald != null) {
      localASN1EncodableVector.ˊ(this.ald);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ess.SigningCertificate
 * JD-Core Version:    0.7.0.1
 */