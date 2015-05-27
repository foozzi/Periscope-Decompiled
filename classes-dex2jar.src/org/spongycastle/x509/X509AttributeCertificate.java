package org.spongycastle.x509;

import java.math.BigInteger;
import java.security.cert.X509Extension;
import java.util.Date;

public abstract interface X509AttributeCertificate
  extends X509Extension
{
  public abstract void checkValidity(Date paramDate);
  
  public abstract byte[] getEncoded();
  
  public abstract Date getNotAfter();
  
  public abstract BigInteger getSerialNumber();
  
  public abstract AttributeCertificateHolder tv();
  
  public abstract AttributeCertificateIssuer ty();
  
  public abstract X509Attribute[] ڊ(String paramString);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509AttributeCertificate
 * JD-Core Version:    0.7.0.1
 */