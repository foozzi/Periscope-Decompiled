package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.GeneralName;

public class PKIHeader
  extends ASN1Object
{
  public static final GeneralName adq = new GeneralName(X500Name.ᒾ(new DERSequence()));
  private ASN1OctetString adA;
  private PKIFreeText adB;
  private ASN1Sequence adC;
  private ASN1Integer adr;
  private GeneralName ads;
  private GeneralName adt;
  private ASN1GeneralizedTime adu;
  private AlgorithmIdentifier adv;
  private ASN1OctetString adw;
  private ASN1OctetString adx;
  private ASN1OctetString ady;
  private ASN1OctetString adz;
  
  private void ˊ(ASN1EncodableVector paramASN1EncodableVector, int paramInt, ASN1Encodable paramASN1Encodable)
  {
    if (paramASN1Encodable != null) {
      paramASN1EncodableVector.ˊ(new DERTaggedObject(true, paramInt, paramASN1Encodable));
    }
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.adr);
    localASN1EncodableVector.ˊ(this.ads);
    localASN1EncodableVector.ˊ(this.adt);
    ˊ(localASN1EncodableVector, 0, this.adu);
    ˊ(localASN1EncodableVector, 1, this.adv);
    ˊ(localASN1EncodableVector, 2, this.adw);
    ˊ(localASN1EncodableVector, 3, this.adx);
    ˊ(localASN1EncodableVector, 4, this.ady);
    ˊ(localASN1EncodableVector, 5, this.adz);
    ˊ(localASN1EncodableVector, 6, this.adA);
    ˊ(localASN1EncodableVector, 7, this.adB);
    ˊ(localASN1EncodableVector, 8, this.adC);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.PKIHeader
 * JD-Core Version:    0.7.0.1
 */