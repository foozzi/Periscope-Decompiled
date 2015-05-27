package org.spongycastle.asn1.tsp;

import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;

public class TimeStampReq
  extends ASN1Object
{
  ASN1Integer aek;
  Extensions ahV;
  MessageImprint avE;
  ASN1Integer avH;
  ASN1ObjectIdentifier avJ;
  ASN1Boolean avK;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(this.avE);
    if (this.avJ != null) {
      localASN1EncodableVector.ˊ(this.avJ);
    }
    if (this.avH != null) {
      localASN1EncodableVector.ˊ(this.avH);
    }
    if ((this.avK != null) && (this.avK.ew())) {
      localASN1EncodableVector.ˊ(this.avK);
    }
    if (this.ahV != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.ahV));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.tsp.TimeStampReq
 * JD-Core Version:    0.7.0.1
 */