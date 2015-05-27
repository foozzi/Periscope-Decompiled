package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

public class PolicyQualifierId
  extends ASN1ObjectIdentifier
{
  public static final PolicyQualifierId aAr = new PolicyQualifierId("1.3.6.1.5.5.7.2.1");
  public static final PolicyQualifierId aAs = new PolicyQualifierId("1.3.6.1.5.5.7.2.2");
  
  private PolicyQualifierId(String paramString)
  {
    super(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.PolicyQualifierId
 * JD-Core Version:    0.7.0.1
 */