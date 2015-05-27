package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Attribute;
import org.spongycastle.asn1.x509.AttributeCertificate;

public class SignerAttribute
  extends ASN1Object
{
  private Object[] akT;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    int i = 0;
    while (i != this.akT.length)
    {
      if ((this.akT[i] instanceof Attribute[])) {
        localASN1EncodableVector.ˊ(new DERTaggedObject(0, new DERSequence((Attribute[])this.akT[i])));
      } else {
        localASN1EncodableVector.ˊ(new DERTaggedObject(1, (AttributeCertificate)this.akT[i]));
      }
      i += 1;
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.SignerAttribute
 * JD-Core Version:    0.7.0.1
 */