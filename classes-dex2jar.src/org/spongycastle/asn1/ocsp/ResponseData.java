package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;

public class ResponseData
  extends ASN1Object
{
  private static final ASN1Integer apl = new ASN1Integer(0L);
  private ASN1Integer aek;
  private ASN1GeneralizedTime akv;
  private boolean apm;
  private ResponderID apn;
  private ASN1Sequence apo;
  private Extensions app;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if ((this.apm) || (!this.aek.equals(apl))) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.aek));
    }
    localASN1EncodableVector.ˊ(this.apn);
    localASN1EncodableVector.ˊ(this.akv);
    localASN1EncodableVector.ˊ(this.apo);
    if (this.app != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.app));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.ResponseData
 * JD-Core Version:    0.7.0.1
 */