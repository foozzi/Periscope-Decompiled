package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class KeyTransRecipientInfo
  extends ASN1Object
{
  private ASN1Integer aek;
  private AlgorithmIdentifier afd;
  private ASN1OctetString afe;
  private RecipientIdentifier afk;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(this.afk);
    localASN1EncodableVector.ˊ(this.afd);
    localASN1EncodableVector.ˊ(this.afe);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.KeyTransRecipientInfo
 * JD-Core Version:    0.7.0.1
 */