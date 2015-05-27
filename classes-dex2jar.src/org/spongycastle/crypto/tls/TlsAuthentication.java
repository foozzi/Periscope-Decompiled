package org.spongycastle.crypto.tls;

public abstract interface TlsAuthentication
{
  public abstract TlsCredentials ˊ(CertificateRequest paramCertificateRequest);
  
  public abstract void ˎ(Certificate paramCertificate);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsAuthentication
 * JD-Core Version:    0.7.0.1
 */