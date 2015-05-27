package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.crmf.CertId;
import org.spongycastle.asn1.x509.Extensions;

public class RevAnnContent
  extends ASN1Object
{
  private PKIStatus adV;
  private ASN1GeneralizedTime adW;
  private ASN1GeneralizedTime adX;
  private Extensions adY;
  private CertId adi;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.adV);
    localASN1EncodableVector.ˊ(this.adi);
    localASN1EncodableVector.ˊ(this.adW);
    localASN1EncodableVector.ˊ(this.adX);
    if (this.adY != null) {
      localASN1EncodableVector.ˊ(this.adY);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.RevAnnContent
 * JD-Core Version:    0.7.0.1
 */