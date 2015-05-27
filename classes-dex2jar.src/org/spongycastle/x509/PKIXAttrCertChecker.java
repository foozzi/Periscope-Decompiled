package org.spongycastle.x509;

import java.security.cert.CertPath;
import java.util.Collection;

public abstract class PKIXAttrCertChecker
  implements Cloneable
{
  public abstract Object clone();
  
  public abstract void ˊ(X509AttributeCertificate paramX509AttributeCertificate, CertPath paramCertPath1, CertPath paramCertPath2, Collection paramCollection);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.PKIXAttrCertChecker
 * JD-Core Version:    0.7.0.1
 */