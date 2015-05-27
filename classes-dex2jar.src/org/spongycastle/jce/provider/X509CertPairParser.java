package org.spongycastle.jce.provider;

import java.io.BufferedInputStream;
import java.io.InputStream;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x509.CertificatePair;
import org.spongycastle.x509.X509CertificatePair;
import org.spongycastle.x509.X509StreamParserSpi;
import org.spongycastle.x509.util.StreamParsingException;

public class X509CertPairParser
  extends X509StreamParserSpi
{
  private InputStream aXU = null;
  
  private X509CertificatePair ˡ(InputStream paramInputStream)
  {
    return new X509CertificatePair(CertificatePair.ﭔ((ASN1Sequence)new ASN1InputStream(paramInputStream).eH()));
  }
  
  public Object pb()
  {
    try
    {
      this.aXU.mark(10);
      int i = this.aXU.read();
      if (i == -1) {
        return null;
      }
      this.aXU.reset();
      X509CertificatePair localX509CertificatePair = ˡ(this.aXU);
      return localX509CertificatePair;
    }
    catch (Exception localException)
    {
      throw new StreamParsingException(localException.toString(), localException);
    }
  }
  
  public void ˆ(InputStream paramInputStream)
  {
    this.aXU = paramInputStream;
    if (!this.aXU.markSupported()) {
      this.aXU = new BufferedInputStream(this.aXU);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.X509CertPairParser
 * JD-Core Version:    0.7.0.1
 */