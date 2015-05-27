package org.spongycastle.jce;

import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x509.TBSCertificateStructure;
import org.spongycastle.asn1.x509.X509Name;

public class PrincipalUtil
{
  public static X509Principal ʻ(X509Certificate paramX509Certificate)
  {
    try
    {
      paramX509Certificate = new X509Principal(X509Name.ᙆ(TBSCertificateStructure.ہ(ASN1Primitive.ՙ(paramX509Certificate.getTBSCertificate())).hi()));
      return paramX509Certificate;
    }
    catch (IOException paramX509Certificate)
    {
      throw new CertificateEncodingException(paramX509Certificate.toString());
    }
  }
  
  public static X509Principal ᐝ(X509Certificate paramX509Certificate)
  {
    try
    {
      paramX509Certificate = new X509Principal(X509Name.ᙆ(TBSCertificateStructure.ہ(ASN1Primitive.ՙ(paramX509Certificate.getTBSCertificate())).hf()));
      return paramX509Certificate;
    }
    catch (IOException paramX509Certificate)
    {
      throw new CertificateEncodingException(paramX509Certificate.toString());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.PrincipalUtil
 * JD-Core Version:    0.7.0.1
 */