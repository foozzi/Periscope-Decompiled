package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;

public class SingleResponse
  extends ASN1Object
{
  private CertID apu;
  private CertStatus apv;
  private ASN1GeneralizedTime apw;
  private ASN1GeneralizedTime apx;
  private Extensions apy;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.apu);
    localASN1EncodableVector.ˊ(this.apv);
    localASN1EncodableVector.ˊ(this.apw);
    if (this.apx != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.apx));
    }
    if (this.apy != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.apy));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.SingleResponse
 * JD-Core Version:    0.7.0.1
 */