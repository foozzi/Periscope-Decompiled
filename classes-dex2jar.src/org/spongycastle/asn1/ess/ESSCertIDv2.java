package org.spongycastle.asn1.ess;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.IssuerSerial;

public class ESSCertIDv2
  extends ASN1Object
{
  private static final AlgorithmIdentifier alb = new AlgorithmIdentifier(NISTObjectIdentifiers.aob);
  private AlgorithmIdentifier akB;
  private IssuerSerial akZ;
  private byte[] ala;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (!this.akB.equals(alb)) {
      localASN1EncodableVector.ˊ(this.akB);
    }
    localASN1EncodableVector.ˊ(new DEROctetString(this.ala).ez());
    if (this.akZ != null) {
      localASN1EncodableVector.ˊ(this.akZ);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ess.ESSCertIDv2
 * JD-Core Version:    0.7.0.1
 */