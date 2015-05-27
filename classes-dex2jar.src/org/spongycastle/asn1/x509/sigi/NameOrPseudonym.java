package org.spongycastle.asn1.x509.sigi;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x500.DirectoryString;

public class NameOrPseudonym
  extends ASN1Object
  implements ASN1Choice
{
  private DirectoryString aCA;
  private ASN1Sequence aCB;
  private DirectoryString aCz;
  
  public ASN1Primitive ez()
  {
    if (this.aCz != null) {
      return this.aCz.ez();
    }
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aCA);
    localASN1EncodableVector.ˊ(this.aCB);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.sigi.NameOrPseudonym
 * JD-Core Version:    0.7.0.1
 */