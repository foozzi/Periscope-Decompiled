package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.GeneralName;

public class Admissions
  extends ASN1Object
{
  private GeneralName amJ;
  private NamingAuthority amL;
  private ASN1Sequence amM;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.amJ != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.amJ));
    }
    if (this.amL != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.amL));
    }
    localASN1EncodableVector.ˊ(this.amM);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.isismtt.x509.Admissions
 * JD-Core Version:    0.7.0.1
 */