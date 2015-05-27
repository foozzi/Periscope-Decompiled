package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;

public class CertificationRequestInfo
  extends ASN1Object
{
  ASN1Set aej;
  ASN1Integer aek;
  X500Name apZ;
  SubjectPublicKeyInfo aqa;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(this.apZ);
    localASN1EncodableVector.ˊ(this.aqa);
    if (this.aej != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.aej));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.CertificationRequestInfo
 * JD-Core Version:    0.7.0.1
 */