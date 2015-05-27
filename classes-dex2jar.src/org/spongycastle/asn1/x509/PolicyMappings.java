package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;

public class PolicyMappings
  extends ASN1Object
{
  ASN1Sequence agu;
  
  public ASN1Primitive ez()
  {
    return this.agu;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.PolicyMappings
 * JD-Core Version:    0.7.0.1
 */