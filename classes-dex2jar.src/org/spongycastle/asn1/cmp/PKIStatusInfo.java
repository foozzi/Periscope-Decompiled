package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

public class PKIStatusInfo
  extends ASN1Object
{
  ASN1Integer adP;
  PKIFreeText adQ;
  DERBitString adR;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.adP);
    if (this.adQ != null) {
      localASN1EncodableVector.ˊ(this.adQ);
    }
    if (this.adR != null) {
      localASN1EncodableVector.ˊ(this.adR);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.PKIStatusInfo
 * JD-Core Version:    0.7.0.1
 */