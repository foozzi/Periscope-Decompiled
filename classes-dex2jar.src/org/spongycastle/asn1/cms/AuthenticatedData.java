package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class AuthenticatedData
  extends ASN1Object
{
  private ASN1Integer aek;
  private OriginatorInfo ael;
  private ASN1Set aem;
  private ASN1Set aeo;
  private ASN1OctetString aep;
  private ASN1Set aeq;
  private AlgorithmIdentifier aer;
  private AlgorithmIdentifier aes;
  private ContentInfo aet;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    if (this.ael != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.ael));
    }
    localASN1EncodableVector.ˊ(this.aem);
    localASN1EncodableVector.ˊ(this.aer);
    if (this.aes != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.aes));
    }
    localASN1EncodableVector.ˊ(this.aet);
    if (this.aeo != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 2, this.aeo));
    }
    localASN1EncodableVector.ˊ(this.aep);
    if (this.aeq != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 3, this.aeq));
    }
    return new BERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.AuthenticatedData
 * JD-Core Version:    0.7.0.1
 */