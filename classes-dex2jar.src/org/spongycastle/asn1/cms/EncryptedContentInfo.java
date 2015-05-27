package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.BERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class EncryptedContentInfo
  extends ASN1Object
{
  private AlgorithmIdentifier aeS;
  private ASN1OctetString aeT;
  private ASN1ObjectIdentifier aew;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aew);
    localASN1EncodableVector.ˊ(this.aeS);
    if (this.aeT != null) {
      localASN1EncodableVector.ˊ(new BERTaggedObject(false, 0, this.aeT));
    }
    return new BERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.EncryptedContentInfo
 * JD-Core Version:    0.7.0.1
 */