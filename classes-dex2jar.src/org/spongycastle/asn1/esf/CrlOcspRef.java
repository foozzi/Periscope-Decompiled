package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class CrlOcspRef
  extends ASN1Object
{
  private CrlListID akb;
  private OcspListID akc;
  private OtherRevRefs akd;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.akb != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.akb.ez()));
    }
    if (this.akc != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.akc.ez()));
    }
    if (this.akd != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.akd.ez()));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.CrlOcspRef
 * JD-Core Version:    0.7.0.1
 */