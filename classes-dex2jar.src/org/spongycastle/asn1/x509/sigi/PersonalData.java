package org.spongycastle.asn1.x509.sigi;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x500.DirectoryString;

public class PersonalData
  extends ASN1Object
{
  private NameOrPseudonym aCC;
  private BigInteger aCD;
  private ASN1GeneralizedTime aCE;
  private DirectoryString aCF;
  private String aCG;
  private DirectoryString aCH;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aCC);
    if (this.aCD != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, new ASN1Integer(this.aCD)));
    }
    if (this.aCE != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.aCE));
    }
    if (this.aCF != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.aCF));
    }
    if (this.aCG != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 3, new DERPrintableString(this.aCG, true)));
    }
    if (this.aCH != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 4, this.aCH));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.sigi.PersonalData
 * JD-Core Version:    0.7.0.1
 */