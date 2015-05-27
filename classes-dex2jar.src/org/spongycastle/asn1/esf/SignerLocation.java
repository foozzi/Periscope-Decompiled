package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.DERUTF8String;

public class SignerLocation
  extends ASN1Object
{
  private DERUTF8String akU;
  private DERUTF8String akV;
  private ASN1Sequence akW;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.akU != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.akU));
    }
    if (this.akV != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.akV));
    }
    if (this.akW != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.akW));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.SignerLocation
 * JD-Core Version:    0.7.0.1
 */