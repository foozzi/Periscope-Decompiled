package org.spongycastle.asn1.x509.qualified;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

public class Iso4217CurrencyCode
  extends ASN1Object
  implements ASN1Choice
{
  ASN1Encodable aaF;
  
  public ASN1Primitive ez()
  {
    return this.aaF.ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.qualified.Iso4217CurrencyCode
 * JD-Core Version:    0.7.0.1
 */