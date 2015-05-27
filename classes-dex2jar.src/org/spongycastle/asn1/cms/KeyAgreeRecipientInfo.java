package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class KeyAgreeRecipientInfo
  extends ASN1Object
{
  private ASN1Integer aek;
  private AlgorithmIdentifier afd;
  private OriginatorIdentifierOrKey afh;
  private ASN1OctetString afi;
  private ASN1Sequence afj;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.afh));
    if (this.afi != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.afi));
    }
    localASN1EncodableVector.ˊ(this.afd);
    localASN1EncodableVector.ˊ(this.afj);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.KeyAgreeRecipientInfo
 * JD-Core Version:    0.7.0.1
 */