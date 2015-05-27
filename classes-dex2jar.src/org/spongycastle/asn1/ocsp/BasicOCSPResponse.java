package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class BasicOCSPResponse
  extends ASN1Object
{
  private DERBitString agN;
  private ASN1Sequence ahU;
  private ResponseData aoO;
  private AlgorithmIdentifier aoP;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aoO);
    localASN1EncodableVector.ˊ(this.aoP);
    localASN1EncodableVector.ˊ(this.agN);
    if (this.ahU != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.ahU));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.BasicOCSPResponse
 * JD-Core Version:    0.7.0.1
 */