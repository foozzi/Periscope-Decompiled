package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.Principal;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.util.ASN1Dump;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.CRLDistPoint;
import org.spongycastle.asn1.x509.CRLNumber;
import org.spongycastle.asn1.x509.CertificateList;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.IssuingDistributionPoint;
import org.spongycastle.asn1.x509.TBSCertList;
import org.spongycastle.asn1.x509.TBSCertList.CRLEntry;
import org.spongycastle.asn1.x509.Time;
import org.spongycastle.jce.X509Principal;
import org.spongycastle.jce.provider.RFC3280CertPathUtilities;
import org.spongycastle.util.encoders.Hex;

public class X509CRLObject
  extends X509CRL
{
  private CertificateList aYj;
  private String aYk;
  private byte[] aYl;
  private boolean aYm;
  private int awi;
  private boolean ayx = false;
  
  protected X509CRLObject(CertificateList paramCertificateList)
  {
    this.aYj = paramCertificateList;
    try
    {
      this.aYk = X509SignatureUtil.ˊ(paramCertificateList.hk());
      if (paramCertificateList.hk().fL() != null) {
        this.aYl = paramCertificateList.hk().fL().ez().getEncoded("DER");
      } else {
        this.aYl = null;
      }
      this.aYm = ˊ(this);
      return;
    }
    catch (Exception paramCertificateList)
    {
      throw new CRLException("CRL contents invalid: " + paramCertificateList);
    }
  }
  
  private Set nK()
  {
    HashSet localHashSet = new HashSet();
    Enumeration localEnumeration = this.aYj.hn();
    Object localObject2;
    for (Object localObject1 = null; localEnumeration.hasMoreElements(); localObject1 = localObject2)
    {
      Object localObject3 = (TBSCertList.CRLEntry)localEnumeration.nextElement();
      localHashSet.add(new X509CRLEntryObject((TBSCertList.CRLEntry)localObject3, this.aYm, (X500Name)localObject1));
      localObject2 = localObject1;
      if (this.aYm)
      {
        localObject2 = localObject1;
        if (((TBSCertList.CRLEntry)localObject3).hasExtensions())
        {
          localObject3 = ((TBSCertList.CRLEntry)localObject3).gX().ʻ(Extension.ayU);
          localObject2 = localObject1;
          if (localObject3 != null) {
            localObject2 = X500Name.ᒾ(org.spongycastle.asn1.x509.GeneralNames.＿(localObject3.hz()).hB()[0].hw());
          }
        }
      }
    }
    return localHashSet;
  }
  
  static boolean ˊ(X509CRL paramX509CRL)
  {
    try
    {
      paramX509CRL = paramX509CRL.getExtensionValue(Extension.ayT.getId());
      if (paramX509CRL != null)
      {
        boolean bool = IssuingDistributionPoint.ɹ(ASN1OctetString.ﹸ(paramX509CRL).eM()).hH();
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (Exception paramX509CRL)
    {
      throw new ExtCRLException("Exception reading IssuingDistributionPoint", paramX509CRL);
    }
  }
  
  private Set ﺑ(boolean paramBoolean)
  {
    if (getVersion() == 2)
    {
      Extensions localExtensions = this.aYj.hm().gX();
      if (localExtensions != null)
      {
        HashSet localHashSet = new HashSet();
        Enumeration localEnumeration = localExtensions.hA();
        while (localEnumeration.hasMoreElements())
        {
          ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
          if (paramBoolean == localExtensions.ʻ(localASN1ObjectIdentifier).isCritical()) {
            localHashSet.add(localASN1ObjectIdentifier.getId());
          }
        }
        return localHashSet;
      }
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof X509CRL)) {
      return false;
    }
    if ((paramObject instanceof X509CRLObject))
    {
      paramObject = (X509CRLObject)paramObject;
      if ((this.ayx) && (paramObject.ayx) && (paramObject.awi != this.awi)) {
        return false;
      }
      return this.aYj.equals(paramObject.aYj);
    }
    return super.equals(paramObject);
  }
  
  public Set getCriticalExtensionOIDs()
  {
    return ﺑ(true);
  }
  
  public byte[] getEncoded()
  {
    try
    {
      byte[] arrayOfByte = this.aYj.getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new CRLException(localIOException.toString());
    }
  }
  
  public byte[] getExtensionValue(String paramString)
  {
    Extensions localExtensions = this.aYj.hm().gX();
    if (localExtensions != null)
    {
      paramString = localExtensions.ʻ(new ASN1ObjectIdentifier(paramString));
      if (paramString != null) {
        try
        {
          paramString = paramString.hy().getEncoded();
          return paramString;
        }
        catch (Exception paramString)
        {
          throw new IllegalStateException("error parsing " + paramString.toString());
        }
      }
    }
    return null;
  }
  
  public Principal getIssuerDN()
  {
    return new X509Principal(X500Name.ᒾ(this.aYj.hf().ez()));
  }
  
  public X500Principal getIssuerX500Principal()
  {
    try
    {
      X500Principal localX500Principal = new X500Principal(this.aYj.hf().getEncoded());
      return localX500Principal;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("can't encode issuer DN");
    }
  }
  
  public Date getNextUpdate()
  {
    if (this.aYj.hp() != null) {
      return this.aYj.hp().getDate();
    }
    return null;
  }
  
  public Set getNonCriticalExtensionOIDs()
  {
    return ﺑ(false);
  }
  
  public X509CRLEntry getRevokedCertificate(BigInteger paramBigInteger)
  {
    Enumeration localEnumeration = this.aYj.hn();
    Object localObject2;
    for (Object localObject1 = null; localEnumeration.hasMoreElements(); localObject1 = localObject2)
    {
      Object localObject3 = (TBSCertList.CRLEntry)localEnumeration.nextElement();
      if (paramBigInteger.equals(((TBSCertList.CRLEntry)localObject3).hY().eA())) {
        return new X509CRLEntryObject((TBSCertList.CRLEntry)localObject3, this.aYm, (X500Name)localObject1);
      }
      localObject2 = localObject1;
      if (this.aYm)
      {
        localObject2 = localObject1;
        if (((TBSCertList.CRLEntry)localObject3).hasExtensions())
        {
          localObject3 = ((TBSCertList.CRLEntry)localObject3).gX().ʻ(Extension.ayU);
          localObject2 = localObject1;
          if (localObject3 != null) {
            localObject2 = X500Name.ᒾ(org.spongycastle.asn1.x509.GeneralNames.＿(localObject3.hz()).hB()[0].hw());
          }
        }
      }
    }
    return null;
  }
  
  public Set getRevokedCertificates()
  {
    Set localSet = nK();
    if (!localSet.isEmpty()) {
      return Collections.unmodifiableSet(localSet);
    }
    return null;
  }
  
  public String getSigAlgName()
  {
    return this.aYk;
  }
  
  public String getSigAlgOID()
  {
    return this.aYj.hk().fK().getId();
  }
  
  public byte[] getSigAlgParams()
  {
    if (this.aYl != null)
    {
      byte[] arrayOfByte = new byte[this.aYl.length];
      System.arraycopy(this.aYl, 0, arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    return null;
  }
  
  public byte[] getSignature()
  {
    return this.aYj.hl().getBytes();
  }
  
  public byte[] getTBSCertList()
  {
    try
    {
      byte[] arrayOfByte = this.aYj.hm().getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new CRLException(localIOException.toString());
    }
  }
  
  public Date getThisUpdate()
  {
    return this.aYj.ho().getDate();
  }
  
  public int getVersion()
  {
    return this.aYj.he();
  }
  
  public boolean hasUnsupportedCriticalExtension()
  {
    Set localSet = getCriticalExtensionOIDs();
    if (localSet == null) {
      return false;
    }
    localSet.remove(RFC3280CertPathUtilities.bbe);
    localSet.remove(RFC3280CertPathUtilities.bbf);
    return !localSet.isEmpty();
  }
  
  public int hashCode()
  {
    if (!this.ayx)
    {
      this.ayx = true;
      this.awi = super.hashCode();
    }
    return this.awi;
  }
  
  public boolean isRevoked(java.security.cert.Certificate paramCertificate)
  {
    if (!paramCertificate.getType().equals("X.509")) {
      throw new RuntimeException("X.509 CRL used with non X.509 Cert");
    }
    Enumeration localEnumeration = this.aYj.hn();
    Object localObject2 = this.aYj.hf();
    if (localEnumeration.hasMoreElements())
    {
      BigInteger localBigInteger = ((X509Certificate)paramCertificate).getSerialNumber();
      while (localEnumeration.hasMoreElements())
      {
        TBSCertList.CRLEntry localCRLEntry = TBSCertList.CRLEntry.ר(localEnumeration.nextElement());
        Object localObject1 = localObject2;
        if (this.aYm)
        {
          localObject1 = localObject2;
          if (localCRLEntry.hasExtensions())
          {
            Extension localExtension = localCRLEntry.gX().ʻ(Extension.ayU);
            localObject1 = localObject2;
            if (localExtension != null) {
              localObject1 = X500Name.ᒾ(org.spongycastle.asn1.x509.GeneralNames.＿(localExtension.hz()).hB()[0].hw());
            }
          }
        }
        if (localCRLEntry.hY().eA().equals(localBigInteger))
        {
          if ((paramCertificate instanceof X509Certificate)) {
            paramCertificate = X500Name.ᒾ(((X509Certificate)paramCertificate).getIssuerX500Principal().getEncoded());
          } else {
            try
            {
              paramCertificate = org.spongycastle.asn1.x509.Certificate.ⅰ(paramCertificate.getEncoded()).hf();
            }
            catch (CertificateEncodingException paramCertificate)
            {
              throw new RuntimeException("Cannot process certificate");
            }
          }
          return ((X500Name)localObject1).equals(paramCertificate);
        }
        localObject2 = localObject1;
      }
    }
    return false;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("              Version: ").append(getVersion()).append(str);
    localStringBuffer.append("             IssuerDN: ").append(getIssuerDN()).append(str);
    localStringBuffer.append("          This update: ").append(getThisUpdate()).append(str);
    localStringBuffer.append("          Next update: ").append(getNextUpdate()).append(str);
    localStringBuffer.append("  Signature Algorithm: ").append(getSigAlgName()).append(str);
    Object localObject = getSignature();
    localStringBuffer.append("            Signature: ").append(new String(Hex.ᑊ((byte[])localObject, 0, 20))).append(str);
    int i = 20;
    while (i < localObject.length)
    {
      if (i < localObject.length - 20) {
        localStringBuffer.append("                       ").append(new String(Hex.ᑊ((byte[])localObject, i, 20))).append(str);
      } else {
        localStringBuffer.append("                       ").append(new String(Hex.ᑊ((byte[])localObject, i, localObject.length - i))).append(str);
      }
      i += 20;
    }
    localObject = this.aYj.hm().gX();
    if (localObject != null)
    {
      Enumeration localEnumeration = ((Extensions)localObject).hA();
      if (localEnumeration.hasMoreElements()) {
        localStringBuffer.append("           Extensions: ").append(str);
      }
      while (localEnumeration.hasMoreElements())
      {
        ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
        Extension localExtension = ((Extensions)localObject).ʻ(localASN1ObjectIdentifier);
        if (localExtension.hy() != null)
        {
          ASN1InputStream localASN1InputStream = new ASN1InputStream(localExtension.hy().eM());
          localStringBuffer.append("                       critical(").append(localExtension.isCritical()).append(") ");
          try
          {
            if (localASN1ObjectIdentifier.equals(Extension.ayO))
            {
              localStringBuffer.append(new CRLNumber(ASN1Integer.ﯨ(localASN1InputStream.eH()).eI())).append(str);
            }
            else if (localASN1ObjectIdentifier.equals(Extension.ayS))
            {
              localStringBuffer.append("Base CRL: " + new CRLNumber(ASN1Integer.ﯨ(localASN1InputStream.eH()).eI())).append(str);
            }
            else if (localASN1ObjectIdentifier.equals(Extension.ayT))
            {
              localStringBuffer.append(IssuingDistributionPoint.ɹ(localASN1InputStream.eH())).append(str);
            }
            else if (localASN1ObjectIdentifier.equals(Extension.ayW))
            {
              localStringBuffer.append(CRLDistPoint.ⁿ(localASN1InputStream.eH())).append(str);
            }
            else if (localASN1ObjectIdentifier.equals(Extension.azc))
            {
              localStringBuffer.append(CRLDistPoint.ⁿ(localASN1InputStream.eH())).append(str);
            }
            else
            {
              localStringBuffer.append(localASN1ObjectIdentifier.getId());
              localStringBuffer.append(" value = ").append(ASN1Dump.ᑉ(localASN1InputStream.eH())).append(str);
            }
          }
          catch (Exception localException)
          {
            localStringBuffer.append(localASN1ObjectIdentifier.getId());
            localStringBuffer.append(" value = ").append("*****").append(str);
          }
        }
        else
        {
          localStringBuffer.append(str);
        }
      }
    }
    localObject = getRevokedCertificates();
    if (localObject != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        localStringBuffer.append(((Iterator)localObject).next());
        localStringBuffer.append(str);
      }
    }
    return localStringBuffer.toString();
  }
  
  public void verify(PublicKey paramPublicKey)
  {
    verify(paramPublicKey, "SC");
  }
  
  public void verify(PublicKey paramPublicKey, String paramString)
  {
    if (!this.aYj.hk().equals(this.aYj.hm().hX())) {
      throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
    }
    if (paramString != null) {
      paramString = Signature.getInstance(getSigAlgName(), paramString);
    } else {
      paramString = Signature.getInstance(getSigAlgName());
    }
    paramString.initVerify(paramPublicKey);
    paramString.update(getTBSCertList());
    if (!paramString.verify(getSignature())) {
      throw new SignatureException("CRL does not verify with supplied public key.");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.x509.X509CRLObject
 * JD-Core Version:    0.7.0.1
 */