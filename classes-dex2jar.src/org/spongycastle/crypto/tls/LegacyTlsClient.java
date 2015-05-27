package org.spongycastle.crypto.tls;

public class LegacyTlsClient
  extends DefaultTlsClient
{
  protected CertificateVerifyer aTN;
  
  public TlsAuthentication mn()
  {
    return new LegacyTlsAuthentication(this.aTN);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.LegacyTlsClient
 * JD-Core Version:    0.7.0.1
 */