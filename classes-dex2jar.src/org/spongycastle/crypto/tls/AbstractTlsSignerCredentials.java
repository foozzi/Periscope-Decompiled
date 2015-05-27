package org.spongycastle.crypto.tls;

public abstract class AbstractTlsSignerCredentials
  extends AbstractTlsCredentials
  implements TlsSignerCredentials
{
  public SignatureAndHashAlgorithm lO()
  {
    throw new IllegalStateException("TlsSignerCredentials implementation does not support (D)TLS 1.2+");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AbstractTlsSignerCredentials
 * JD-Core Version:    0.7.0.1
 */