package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;

public abstract interface TlsKeyExchange
{
  public abstract byte[] lL();
  
  public abstract void lM();
  
  public abstract void lN();
  
  public abstract void mQ();
  
  public abstract byte[] mR();
  
  public abstract void ʽ(OutputStream paramOutputStream);
  
  public abstract void ˈ(InputStream paramInputStream);
  
  public abstract void ˉ(InputStream paramInputStream);
  
  public abstract void ˊ(Certificate paramCertificate);
  
  public abstract void ˊ(TlsContext paramTlsContext);
  
  public abstract void ˊ(TlsCredentials paramTlsCredentials);
  
  public abstract void ˋ(Certificate paramCertificate);
  
  public abstract void ˋ(CertificateRequest paramCertificateRequest);
  
  public abstract void ˋ(TlsCredentials paramTlsCredentials);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsKeyExchange
 * JD-Core Version:    0.7.0.1
 */