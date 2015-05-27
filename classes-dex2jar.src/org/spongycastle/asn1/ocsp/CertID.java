package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class CertID
  extends ASN1Object
{
  ASN1Integer aeY;
  AlgorithmIdentifier akB;
  ASN1OctetString aoQ;
  ASN1OctetString aoR;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.akB);
    localASN1EncodableVector.ˊ(this.aoQ);
    localASN1EncodableVector.ˊ(this.aoR);
    localASN1EncodableVector.ˊ(this.aeY);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.CertID
 * JD-Core Version:    0.7.0.1
 */