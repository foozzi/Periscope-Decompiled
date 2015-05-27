package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;

public class POPOSigningKeyInput
  extends ASN1Object
{
  private GeneralName ads;
  private PKMACValue agO;
  private SubjectPublicKeyInfo agP;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.ads != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.ads));
    } else {
      localASN1EncodableVector.ˊ(this.agO);
    }
    localASN1EncodableVector.ˊ(this.agP);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.POPOSigningKeyInput
 * JD-Core Version:    0.7.0.1
 */