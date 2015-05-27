package org.spongycastle.crypto.tls;

import org.spongycastle.asn1.x509.Certificate;

public class AlwaysValidVerifyer
  implements CertificateVerifyer
{
  public boolean ˊ(Certificate[] paramArrayOfCertificate)
  {
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AlwaysValidVerifyer
 * JD-Core Version:    0.7.0.1
 */