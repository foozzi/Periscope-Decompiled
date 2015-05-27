package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class UserNotice
  extends ASN1Object
{
  private NoticeReference akK;
  private DisplayText akL;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.akK != null) {
      localASN1EncodableVector.ˊ(this.akK);
    }
    if (this.akL != null) {
      localASN1EncodableVector.ˊ(this.akL);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.UserNotice
 * JD-Core Version:    0.7.0.1
 */