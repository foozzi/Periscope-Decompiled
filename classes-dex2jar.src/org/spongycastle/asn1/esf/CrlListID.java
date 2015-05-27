package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class CrlListID
  extends ASN1Object
{
  private ASN1Sequence aed;
  
  public ASN1Primitive ez()
  {
    return new DERSequence(this.aed);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.CrlListID
 * JD-Core Version:    0.7.0.1
 */