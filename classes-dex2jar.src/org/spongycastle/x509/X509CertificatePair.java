package org.spongycastle.x509;

import java.security.cert.X509Certificate;
import org.spongycastle.asn1.x509.CertificatePair;
import org.spongycastle.jce.provider.X509CertificateObject;

public class X509CertificatePair
{
  private X509Certificate bkU;
  private X509Certificate bkV;
  
  public X509CertificatePair(CertificatePair paramCertificatePair)
  {
    if (paramCertificatePair.hq() != null) {
      this.bkU = new X509CertificateObject(paramCertificatePair.hq());
    }
    if (paramCertificatePair.hr() != null) {
      this.bkV = new X509CertificateObject(paramCertificatePair.hr());
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    if (!(paramObject instanceof X509CertificatePair)) {
      return false;
    }
    paramObject = (X509CertificatePair)paramObject;
    boolean bool2 = true;
    boolean bool1 = true;
    if (this.bkU != null) {
      bool1 = this.bkU.equals(paramObject.bkU);
    } else if (paramObject.bkU != null) {
      bool1 = false;
    }
    if (this.bkV != null) {
      bool2 = this.bkV.equals(paramObject.bkV);
    } else if (paramObject.bkV != null) {
      bool2 = false;
    }
    return (bool1) && (bool2);
  }
  
  public int hashCode()
  {
    int i = -1;
    if (this.bkU != null) {
      i = this.bkU.hashCode() ^ 0xFFFFFFFF;
    }
    int j = i;
    if (this.bkV != null) {
      j = i * 17 ^ this.bkV.hashCode();
    }
    return j;
  }
  
  public X509Certificate tE()
  {
    return this.bkU;
  }
  
  public X509Certificate tF()
  {
    return this.bkV;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509CertificatePair
 * JD-Core Version:    0.7.0.1
 */