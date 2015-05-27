package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class EnvelopedData
  extends ASN1Object
{
  private EncryptedContentInfo aeU;
  private ASN1Set aeV;
  private ASN1Integer aek;
  private OriginatorInfo ael;
  private ASN1Set aem;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    if (this.ael != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.ael));
    }
    localASN1EncodableVector.ˊ(this.aem);
    localASN1EncodableVector.ˊ(this.aeU);
    if (this.aeV != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.aeV));
    }
    return new BERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.EnvelopedData
 * JD-Core Version:    0.7.0.1
 */