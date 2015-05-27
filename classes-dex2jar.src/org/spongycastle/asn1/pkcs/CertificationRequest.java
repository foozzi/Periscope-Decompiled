package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class CertificationRequest
  extends ASN1Object
{
  protected CertificationRequestInfo apW = null;
  protected AlgorithmIdentifier apX = null;
  protected DERBitString apY = null;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.apW);
    localASN1EncodableVector.ˊ(this.apX);
    localASN1EncodableVector.ˊ(this.apY);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.CertificationRequest
 * JD-Core Version:    0.7.0.1
 */