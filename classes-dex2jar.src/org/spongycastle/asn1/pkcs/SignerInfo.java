package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class SignerInfo
  extends ASN1Object
{
  private ASN1Integer aek;
  private AlgorithmIdentifier afR;
  private ASN1Set afS;
  private AlgorithmIdentifier afT;
  private ASN1OctetString afU;
  private ASN1Set afV;
  private IssuerAndSerialNumber atg;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(this.atg);
    localASN1EncodableVector.ˊ(this.afR);
    if (this.afS != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.afS));
    }
    localASN1EncodableVector.ˊ(this.afT);
    localASN1EncodableVector.ˊ(this.afU);
    if (this.afV != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.afV));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.SignerInfo
 * JD-Core Version:    0.7.0.1
 */