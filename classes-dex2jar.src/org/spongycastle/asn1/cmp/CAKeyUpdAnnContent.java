package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class CAKeyUpdAnnContent
  extends ASN1Object
{
  private CMPCertificate aca;
  private CMPCertificate acb;
  private CMPCertificate acc;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aca);
    localASN1EncodableVector.ˊ(this.acb);
    localASN1EncodableVector.ˊ(this.acc);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.CAKeyUpdAnnContent
 * JD-Core Version:    0.7.0.1
 */