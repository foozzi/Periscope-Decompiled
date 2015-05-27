package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class DigestedData
  extends ASN1Object
{
  private ContentInfo aeP;
  private ASN1OctetString aeR;
  private ASN1Integer aek;
  private AlgorithmIdentifier aes;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(this.aes);
    localASN1EncodableVector.ˊ(this.aeP);
    localASN1EncodableVector.ˊ(this.aeR);
    return new BERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.DigestedData
 * JD-Core Version:    0.7.0.1
 */