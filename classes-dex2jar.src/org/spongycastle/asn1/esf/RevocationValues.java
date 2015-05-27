package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class RevocationValues
  extends ASN1Object
{
  private ASN1Sequence akH;
  private ASN1Sequence akI;
  private OtherRevVals akJ;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.akH != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.akH));
    }
    if (this.akI != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.akI));
    }
    if (this.akJ != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.akJ.ez()));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.RevocationValues
 * JD-Core Version:    0.7.0.1
 */