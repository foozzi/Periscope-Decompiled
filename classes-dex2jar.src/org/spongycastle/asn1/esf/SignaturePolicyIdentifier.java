package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERNull;

public class SignaturePolicyIdentifier
  extends ASN1Object
{
  private SignaturePolicyId akR;
  private boolean akS = true;
  
  public ASN1Primitive ez()
  {
    if (this.akS) {
      return DERNull.abj;
    }
    return this.akR.ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.SignaturePolicyIdentifier
 * JD-Core Version:    0.7.0.1
 */