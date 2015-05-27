package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.BERTaggedObject;

public class ContentInfo
  extends ASN1Object
  implements CMSObjectIdentifiers
{
  private ASN1Encodable aeQ;
  private ASN1ObjectIdentifier aew;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aew);
    if (this.aeQ != null) {
      localASN1EncodableVector.ˊ(new BERTaggedObject(0, this.aeQ));
    }
    return new BERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.ContentInfo
 * JD-Core Version:    0.7.0.1
 */