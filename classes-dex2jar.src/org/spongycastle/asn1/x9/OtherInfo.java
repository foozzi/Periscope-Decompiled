package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class OtherInfo
  extends ASN1Object
{
  private KeySpecificInfo aCV;
  private ASN1OctetString aCW;
  private ASN1OctetString aCX;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aCV);
    if (this.aCW != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(0, this.aCW));
    }
    localASN1EncodableVector.ˊ(new DERTaggedObject(2, this.aCX));
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.OtherInfo
 * JD-Core Version:    0.7.0.1
 */