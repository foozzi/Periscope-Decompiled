package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;

public class OtherHash
  extends ASN1Object
  implements ASN1Choice
{
  private OtherHashAlgAndValue akA;
  private ASN1OctetString akz;
  
  public ASN1Primitive ez()
  {
    if (this.akA == null) {
      return this.akz;
    }
    return this.akA.ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.OtherHash
 * JD-Core Version:    0.7.0.1
 */