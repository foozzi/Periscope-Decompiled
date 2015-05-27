package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class KEKIdentifier
  extends ASN1Object
{
  private ASN1OctetString aeZ;
  private ASN1GeneralizedTime afa;
  private OtherKeyAttribute afb;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aeZ);
    if (this.afa != null) {
      localASN1EncodableVector.ˊ(this.afa);
    }
    if (this.afb != null) {
      localASN1EncodableVector.ˊ(this.afb);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.KEKIdentifier
 * JD-Core Version:    0.7.0.1
 */