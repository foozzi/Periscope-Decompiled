package org.spongycastle.asn1.ess;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.IssuerSerial;

public class OtherCertID
  extends ASN1Object
{
  private IssuerSerial akZ;
  private ASN1Encodable alc;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.alc);
    if (this.akZ != null) {
      localASN1EncodableVector.ˊ(this.akZ);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ess.OtherCertID
 * JD-Core Version:    0.7.0.1
 */