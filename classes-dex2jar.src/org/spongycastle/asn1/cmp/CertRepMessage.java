package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class CertRepMessage
  extends ASN1Object
{
  private ASN1Sequence acL;
  private ASN1Sequence acM;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.acL != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.acL));
    }
    localASN1EncodableVector.ˊ(this.acM);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.CertRepMessage
 * JD-Core Version:    0.7.0.1
 */