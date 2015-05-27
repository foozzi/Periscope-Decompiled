package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class OriginatorInfo
  extends ASN1Object
{
  private ASN1Set afq;
  private ASN1Set afr;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.afq != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.afq));
    }
    if (this.afr != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.afr));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.OriginatorInfo
 * JD-Core Version:    0.7.0.1
 */