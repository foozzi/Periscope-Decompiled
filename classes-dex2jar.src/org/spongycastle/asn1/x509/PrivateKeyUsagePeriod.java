package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class PrivateKeyUsagePeriod
  extends ASN1Object
{
  private ASN1GeneralizedTime aAu;
  private ASN1GeneralizedTime aAv;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aAu != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.aAu));
    }
    if (this.aAv != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.aAv));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.PrivateKeyUsagePeriod
 * JD-Core Version:    0.7.0.1
 */