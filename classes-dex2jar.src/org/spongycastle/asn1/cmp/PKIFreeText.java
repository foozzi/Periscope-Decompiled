package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;

public class PKIFreeText
  extends ASN1Object
{
  ASN1Sequence adp;
  
  public ASN1Primitive ez()
  {
    return this.adp;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.PKIFreeText
 * JD-Core Version:    0.7.0.1
 */