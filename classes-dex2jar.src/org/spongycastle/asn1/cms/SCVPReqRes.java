package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class SCVPReqRes
  extends ASN1Object
{
  private final ContentInfo afE;
  private final ContentInfo afF;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.afE != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.afE));
    }
    localASN1EncodableVector.ˊ(this.afF);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.SCVPReqRes
 * JD-Core Version:    0.7.0.1
 */