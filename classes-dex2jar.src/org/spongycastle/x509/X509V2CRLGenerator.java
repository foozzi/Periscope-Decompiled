package org.spongycastle.x509;

import java.security.cert.CRLException;
import org.spongycastle.asn1.x509.V2TBSCertListGenerator;
import org.spongycastle.asn1.x509.X509ExtensionsGenerator;

public class X509V2CRLGenerator
{
  private V2TBSCertListGenerator blf = new V2TBSCertListGenerator();
  private X509ExtensionsGenerator blg = new X509ExtensionsGenerator();
  
  static class ExtCRLException
    extends CRLException
  {
    Throwable aal;
    
    public Throwable getCause()
    {
      return this.aal;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509V2CRLGenerator
 * JD-Core Version:    0.7.0.1
 */