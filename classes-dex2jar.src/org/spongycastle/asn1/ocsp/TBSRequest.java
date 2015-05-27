package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.GeneralName;

public class TBSRequest
  extends ASN1Object
{
  private static final ASN1Integer apl = new ASN1Integer(0L);
  ASN1Integer aek;
  ASN1Sequence apA;
  Extensions apB;
  boolean apC;
  GeneralName apz;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if ((!this.aek.equals(apl)) || (this.apC)) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.aek));
    }
    if (this.apz != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.apz));
    }
    localASN1EncodableVector.ˊ(this.apA);
    if (this.apB != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.apB));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.TBSRequest
 * JD-Core Version:    0.7.0.1
 */