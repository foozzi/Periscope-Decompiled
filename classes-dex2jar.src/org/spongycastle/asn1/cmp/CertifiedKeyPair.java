package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.crmf.EncryptedValue;
import org.spongycastle.asn1.crmf.PKIPublicationInfo;

public class CertifiedKeyPair
  extends ASN1Object
{
  private CertOrEncCert acT;
  private EncryptedValue acU;
  private PKIPublicationInfo acV;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.acT);
    if (this.acU != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.acU));
    }
    if (this.acV != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.acV));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.CertifiedKeyPair
 * JD-Core Version:    0.7.0.1
 */