package org.spongycastle.crypto.tls;

public class LegacyTlsAuthentication
  extends ServerOnlyTlsAuthentication
{
  protected CertificateVerifyer aTN;
  
  public LegacyTlsAuthentication(CertificateVerifyer paramCertificateVerifyer)
  {
    this.aTN = paramCertificateVerifyer;
  }
  
  public void ˎ(Certificate paramCertificate)
  {
    if (!this.aTN.ˊ(paramCertificate.lP())) {
      throw new TlsFatalAlert((short)90);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.LegacyTlsAuthentication
 * JD-Core Version:    0.7.0.1
 */