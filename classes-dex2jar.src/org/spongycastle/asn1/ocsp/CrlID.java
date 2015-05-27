package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class CrlID
  extends ASN1Object
{
  private DERIA5String aoS;
  private ASN1Integer aoT;
  private ASN1GeneralizedTime aoU;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aoS != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.aoS));
    }
    if (this.aoT != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.aoT));
    }
    if (this.aoU != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.aoU));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.CrlID
 * JD-Core Version:    0.7.0.1
 */