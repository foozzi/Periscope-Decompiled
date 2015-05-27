package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.io.InputStream;
import java.io.PushbackInputStream;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactorySpi;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.SignedData;
import org.spongycastle.asn1.x509.CertificateList;

public class CertificateFactory
  extends CertificateFactorySpi
{
  private static final PEMUtil aXQ = new PEMUtil("CERTIFICATE");
  private static final PEMUtil aXR = new PEMUtil("CRL");
  private ASN1Set aXS = null;
  private int aXT = 0;
  private InputStream aXU = null;
  private ASN1Set aXV = null;
  private int aXW = 0;
  private InputStream aXX = null;
  
  private java.security.cert.Certificate getCertificate()
  {
    if (this.aXS != null) {
      while (this.aXT < this.aXS.size())
      {
        Object localObject = this.aXS;
        int i = this.aXT;
        this.aXT = (i + 1);
        localObject = ((ASN1Set)localObject).ϲ(i);
        if ((localObject instanceof ASN1Sequence)) {
          return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.ⅰ(localObject));
        }
      }
    }
    return null;
  }
  
  private CRL nJ()
  {
    if ((this.aXV == null) || (this.aXW >= this.aXV.size())) {
      return null;
    }
    ASN1Set localASN1Set = this.aXV;
    int i = this.aXW;
    this.aXW = (i + 1);
    return ˊ(CertificateList.丶(localASN1Set.ϲ(i)));
  }
  
  private java.security.cert.Certificate ˊ(ASN1InputStream paramASN1InputStream)
  {
    paramASN1InputStream = (ASN1Sequence)paramASN1InputStream.eH();
    if ((paramASN1InputStream.size() > 1) && ((paramASN1InputStream.ϲ(0) instanceof ASN1ObjectIdentifier)) && (paramASN1InputStream.ϲ(0).equals(PKCSObjectIdentifiers.aeC)))
    {
      this.aXS = SignedData.І(ASN1Sequence.ᐝ((ASN1TaggedObject)paramASN1InputStream.ϲ(1), true)).go();
      return getCertificate();
    }
    return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.ⅰ(paramASN1InputStream));
  }
  
  private CRL ˋ(ASN1InputStream paramASN1InputStream)
  {
    paramASN1InputStream = (ASN1Sequence)paramASN1InputStream.eH();
    if ((paramASN1InputStream.size() > 1) && ((paramASN1InputStream.ϲ(0) instanceof ASN1ObjectIdentifier)) && (paramASN1InputStream.ϲ(0).equals(PKCSObjectIdentifiers.aeC)))
    {
      this.aXV = SignedData.І(ASN1Sequence.ᐝ((ASN1TaggedObject)paramASN1InputStream.ϲ(1), true)).gp();
      return nJ();
    }
    return ˊ(CertificateList.丶(paramASN1InputStream));
  }
  
  private java.security.cert.Certificate ᵢ(InputStream paramInputStream)
  {
    paramInputStream = aXQ.ﹺ(paramInputStream);
    if (paramInputStream != null) {
      return new X509CertificateObject(org.spongycastle.asn1.x509.Certificate.ⅰ(paramInputStream));
    }
    return null;
  }
  
  private CRL ⁱ(InputStream paramInputStream)
  {
    paramInputStream = aXR.ﹺ(paramInputStream);
    if (paramInputStream != null) {
      return ˊ(CertificateList.丶(paramInputStream));
    }
    return null;
  }
  
  public CRL engineGenerateCRL(InputStream paramInputStream)
  {
    if (this.aXX == null)
    {
      this.aXX = paramInputStream;
      this.aXV = null;
      this.aXW = 0;
    }
    else if (this.aXX != paramInputStream)
    {
      this.aXX = paramInputStream;
      this.aXV = null;
      this.aXW = 0;
    }
    try
    {
      if (this.aXV != null)
      {
        if (this.aXW != this.aXV.size())
        {
          paramInputStream = nJ();
          return paramInputStream;
        }
        this.aXV = null;
        this.aXW = 0;
        return null;
      }
      paramInputStream = new PushbackInputStream(paramInputStream);
      int i = paramInputStream.read();
      if (i == -1) {
        return null;
      }
      paramInputStream.unread(i);
      if (i != 48)
      {
        paramInputStream = ⁱ(paramInputStream);
        return paramInputStream;
      }
      paramInputStream = ˋ(new ASN1InputStream(paramInputStream, true));
      return paramInputStream;
    }
    catch (CRLException paramInputStream)
    {
      throw paramInputStream;
    }
    catch (Exception paramInputStream)
    {
      throw new CRLException(paramInputStream.toString());
    }
  }
  
  public Collection engineGenerateCRLs(InputStream paramInputStream)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      CRL localCRL = engineGenerateCRL(paramInputStream);
      if (localCRL == null) {
        break;
      }
      localArrayList.add(localCRL);
    }
    return localArrayList;
  }
  
  public CertPath engineGenerateCertPath(InputStream paramInputStream)
  {
    return engineGenerateCertPath(paramInputStream, "PkiPath");
  }
  
  public CertPath engineGenerateCertPath(InputStream paramInputStream, String paramString)
  {
    return new PKIXCertPath(paramInputStream, paramString);
  }
  
  public CertPath engineGenerateCertPath(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject != null) && (!(localObject instanceof X509Certificate))) {
        throw new CertificateException("list contains non X509Certificate object while creating CertPath\n" + localObject.toString());
      }
    }
    return new PKIXCertPath(paramList);
  }
  
  public java.security.cert.Certificate engineGenerateCertificate(InputStream paramInputStream)
  {
    if (this.aXU == null)
    {
      this.aXU = paramInputStream;
      this.aXS = null;
      this.aXT = 0;
    }
    else if (this.aXU != paramInputStream)
    {
      this.aXU = paramInputStream;
      this.aXS = null;
      this.aXT = 0;
    }
    try
    {
      if (this.aXS != null)
      {
        if (this.aXT != this.aXS.size())
        {
          paramInputStream = getCertificate();
          return paramInputStream;
        }
        this.aXS = null;
        this.aXT = 0;
        return null;
      }
      paramInputStream = new PushbackInputStream(paramInputStream);
      int i = paramInputStream.read();
      if (i == -1) {
        return null;
      }
      paramInputStream.unread(i);
      if (i != 48)
      {
        paramInputStream = ᵢ(paramInputStream);
        return paramInputStream;
      }
      paramInputStream = ˊ(new ASN1InputStream(paramInputStream));
      return paramInputStream;
    }
    catch (Exception paramInputStream)
    {
      throw new ExCertificateException(paramInputStream);
    }
  }
  
  public Collection engineGenerateCertificates(InputStream paramInputStream)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      java.security.cert.Certificate localCertificate = engineGenerateCertificate(paramInputStream);
      if (localCertificate == null) {
        break;
      }
      localArrayList.add(localCertificate);
    }
    return localArrayList;
  }
  
  public Iterator engineGetCertPathEncodings()
  {
    return PKIXCertPath.aYd.iterator();
  }
  
  protected CRL ˊ(CertificateList paramCertificateList)
  {
    return new X509CRLObject(paramCertificateList);
  }
  
  class ExCertificateException
    extends CertificateException
  {
    private Throwable aal;
    
    public ExCertificateException(Throwable paramThrowable)
    {
      this.aal = paramThrowable;
    }
    
    public Throwable getCause()
    {
      return this.aal;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.x509.CertificateFactory
 * JD-Core Version:    0.7.0.1
 */