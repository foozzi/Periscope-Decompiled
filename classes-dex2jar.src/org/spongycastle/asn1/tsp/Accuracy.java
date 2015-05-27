package org.spongycastle.asn1.tsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class Accuracy
  extends ASN1Object
{
  ASN1Integer avA;
  ASN1Integer avB;
  ASN1Integer avz;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.avz != null) {
      localASN1EncodableVector.ˊ(this.avz);
    }
    if (this.avA != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.avA));
    }
    if (this.avB != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.avB));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.tsp.Accuracy
 * JD-Core Version:    0.7.0.1
 */