package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.BERTaggedObject;
import org.spongycastle.asn1.DERTaggedObject;

public class SignedData
  extends ASN1Object
{
  private static final ASN1Integer afG = new ASN1Integer(1L);
  private static final ASN1Integer afH = new ASN1Integer(3L);
  private static final ASN1Integer afI = new ASN1Integer(4L);
  private static final ASN1Integer afJ = new ASN1Integer(5L);
  private ASN1Integer aek;
  private ASN1Set afK;
  private ContentInfo afL;
  private ASN1Set afM;
  private ASN1Set afN;
  private boolean afO;
  private boolean afP;
  private ASN1Set afr;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(this.afK);
    localASN1EncodableVector.ˊ(this.afL);
    if (this.afM != null) {
      if (this.afO) {
        localASN1EncodableVector.ˊ(new BERTaggedObject(false, 0, this.afM));
      } else {
        localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.afM));
      }
    }
    if (this.afr != null) {
      if (this.afP) {
        localASN1EncodableVector.ˊ(new BERTaggedObject(false, 1, this.afr));
      } else {
        localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.afr));
      }
    }
    localASN1EncodableVector.ˊ(this.afN);
    return new BERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.SignedData
 * JD-Core Version:    0.7.0.1
 */