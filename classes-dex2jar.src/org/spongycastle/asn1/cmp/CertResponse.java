package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class CertResponse
  extends ASN1Object
{
  private ASN1Integer acN;
  private PKIStatusInfo acO;
  private CertifiedKeyPair acP;
  private ASN1OctetString acQ;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.acN);
    localASN1EncodableVector.ˊ(this.acO);
    if (this.acP != null) {
      localASN1EncodableVector.ˊ(this.acP);
    }
    if (this.acQ != null) {
      localASN1EncodableVector.ˊ(this.acQ);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.CertResponse
 * JD-Core Version:    0.7.0.1
 */