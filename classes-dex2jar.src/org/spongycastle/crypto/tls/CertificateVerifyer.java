package org.spongycastle.crypto.tls;

import org.spongycastle.asn1.x509.Certificate;

public abstract interface CertificateVerifyer
{
  public abstract boolean ˊ(Certificate[] paramArrayOfCertificate);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.CertificateVerifyer
 * JD-Core Version:    0.7.0.1
 */