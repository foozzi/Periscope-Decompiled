package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class OcspListID
  extends ASN1Object
{
  private ASN1Sequence akw;
  
  public ASN1Primitive ez()
  {
    return new DERSequence(this.akw);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.OcspListID
 * JD-Core Version:    0.7.0.1
 */