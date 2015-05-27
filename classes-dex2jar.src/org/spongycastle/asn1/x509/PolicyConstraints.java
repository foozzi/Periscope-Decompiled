package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class PolicyConstraints
  extends ASN1Object
{
  private BigInteger aAn;
  private BigInteger aAo;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aAn != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(0, new ASN1Integer(this.aAn)));
    }
    if (this.aAo != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(1, new ASN1Integer(this.aAo)));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.PolicyConstraints
 * JD-Core Version:    0.7.0.1
 */