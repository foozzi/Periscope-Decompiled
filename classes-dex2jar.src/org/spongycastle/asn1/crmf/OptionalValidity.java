package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Time;

public class OptionalValidity
  extends ASN1Object
{
  private Time agF;
  private Time agG;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.agF != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.agF));
    }
    if (this.agG != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.agG));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.OptionalValidity
 * JD-Core Version:    0.7.0.1
 */