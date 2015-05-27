package org.spongycastle.x509;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.jce.provider.CertPathValidatorUtilities;

public class PKIXCertPathReviewer
  extends CertPathValidatorUtilities
{
  private static final String bkA = X509Extensions.aBK.getId();
  private static final String bkB = X509Extensions.aBy.getId();
  private static final String bkC = X509Extensions.aBG.getId();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.PKIXCertPathReviewer
 * JD-Core Version:    0.7.0.1
 */