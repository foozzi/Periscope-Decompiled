package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class CertStatus
  extends ASN1Object
{
  private ASN1Integer acN;
  private ASN1OctetString acR;
  private PKIStatusInfo acS;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.acR);
    localASN1EncodableVector.ˊ(this.acN);
    if (this.acS != null) {
      localASN1EncodableVector.ˊ(this.acS);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.CertStatus
 * JD-Core Version:    0.7.0.1
 */