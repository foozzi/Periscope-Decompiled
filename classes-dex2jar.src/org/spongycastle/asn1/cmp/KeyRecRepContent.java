package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class KeyRecRepContent
  extends ASN1Object
{
  private PKIStatusInfo acO;
  private CMPCertificate ade;
  private ASN1Sequence adf;
  private ASN1Sequence adg;
  
  private void ˊ(ASN1EncodableVector paramASN1EncodableVector, int paramInt, ASN1Encodable paramASN1Encodable)
  {
    if (paramASN1Encodable != null) {
      paramASN1EncodableVector.ˊ(new DERTaggedObject(true, paramInt, paramASN1Encodable));
    }
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.acO);
    ˊ(localASN1EncodableVector, 0, this.ade);
    ˊ(localASN1EncodableVector, 1, this.adf);
    ˊ(localASN1EncodableVector, 2, this.adg);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.KeyRecRepContent
 * JD-Core Version:    0.7.0.1
 */