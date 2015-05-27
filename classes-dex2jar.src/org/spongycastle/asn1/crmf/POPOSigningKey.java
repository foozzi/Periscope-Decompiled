package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class POPOSigningKey
  extends ASN1Object
{
  private POPOSigningKeyInput agL;
  private AlgorithmIdentifier agM;
  private DERBitString agN;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.agL != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.agL));
    }
    localASN1EncodableVector.ˊ(this.agM);
    localASN1EncodableVector.ˊ(this.agN);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.POPOSigningKey
 * JD-Core Version:    0.7.0.1
 */