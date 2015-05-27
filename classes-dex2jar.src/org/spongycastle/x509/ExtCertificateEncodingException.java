package org.spongycastle.x509;

import java.security.cert.CertificateEncodingException;

class ExtCertificateEncodingException
  extends CertificateEncodingException
{
  Throwable aal;
  
  public Throwable getCause()
  {
    return this.aal;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.ExtCertificateEncodingException
 * JD-Core Version:    0.7.0.1
 */