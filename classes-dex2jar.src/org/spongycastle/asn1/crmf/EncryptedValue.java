package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class EncryptedValue
  extends ASN1Object
{
  private AlgorithmIdentifier agA;
  private DERBitString agB;
  private AlgorithmIdentifier agC;
  private ASN1OctetString agD;
  private DERBitString agE;
  private AlgorithmIdentifier agz;
  
  private void ˊ(ASN1EncodableVector paramASN1EncodableVector, int paramInt, ASN1Encodable paramASN1Encodable)
  {
    if (paramASN1Encodable != null) {
      paramASN1EncodableVector.ˊ(new DERTaggedObject(false, paramInt, paramASN1Encodable));
    }
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    ˊ(localASN1EncodableVector, 0, this.agz);
    ˊ(localASN1EncodableVector, 1, this.agA);
    ˊ(localASN1EncodableVector, 2, this.agB);
    ˊ(localASN1EncodableVector, 3, this.agC);
    ˊ(localASN1EncodableVector, 4, this.agD);
    localASN1EncodableVector.ˊ(this.agE);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.EncryptedValue
 * JD-Core Version:    0.7.0.1
 */