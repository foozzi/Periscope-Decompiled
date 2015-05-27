package org.spongycastle.asn1.ess;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;

public class ContentIdentifier
  extends ASN1Object
{
  ASN1OctetString akY;
  
  public ASN1Primitive ez()
  {
    return this.akY;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ess.ContentIdentifier
 * JD-Core Version:    0.7.0.1
 */