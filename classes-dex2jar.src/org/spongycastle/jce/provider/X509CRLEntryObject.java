package org.spongycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRLException;
import java.security.cert.X509CRLEntry;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.util.ASN1Dump;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x509.CRLReason;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.TBSCertList.CRLEntry;
import org.spongycastle.asn1.x509.Time;
import org.spongycastle.asn1.x509.X509Extension;

public class X509CRLEntryObject
  extends X509CRLEntry
{
  private TBSCertList.CRLEntry aYf;
  private X500Name aYg;
  private int aYh;
  private boolean aYi;
  
  public X509CRLEntryObject(TBSCertList.CRLEntry paramCRLEntry, boolean paramBoolean, X500Name paramX500Name)
  {
    this.aYf = paramCRLEntry;
    this.aYg = ˊ(paramBoolean, paramX500Name);
  }
  
  private Extension ʻ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    Extensions localExtensions = this.aYf.gX();
    if (localExtensions != null) {
      return localExtensions.ʻ(paramASN1ObjectIdentifier);
    }
    return null;
  }
  
  private X500Name ˊ(boolean paramBoolean, X500Name paramX500Name)
  {
    if (!paramBoolean) {
      return null;
    }
    Extension localExtension = ʻ(Extension.ayU);
    if (localExtension == null) {
      return paramX500Name;
    }
    try
    {
      paramX500Name = GeneralNames.＿(localExtension.hz()).hB();
      int i = 0;
      while (i < paramX500Name.length)
      {
        if (paramX500Name[i].eW() == 4)
        {
          paramX500Name = X500Name.ᒾ(paramX500Name[i].hw());
          return paramX500Name;
        }
        i += 1;
      }
      return null;
    }
    catch (Exception paramX500Name) {}
    return null;
  }
  
  private Set ﺑ(boolean paramBoolean)
  {
    Extensions localExtensions = this.aYf.gX();
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
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof X509CRLEntryObject))
    {
      paramObject = (X509CRLEntryObject)paramObject;
      return this.aYf.equals(paramObject.aYf);
    }
    return super.equals(this);
  }
  
  public X500Principal getCertificateIssuer()
  {
    if (this.aYg == null) {
      return null;
    }
    try
    {
      X500Principal localX500Principal = new X500Principal(this.aYg.getEncoded());
      return localX500Principal;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public Set getCriticalExtensionOIDs()
  {
    return ﺑ(true);
  }
  
  public byte[] getEncoded()
  {
    try
    {
      byte[] arrayOfByte = this.aYf.getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new CRLException(localIOException.toString());
    }
  }
  
  public byte[] getExtensionValue(String paramString)
  {
    paramString = ʻ(new ASN1ObjectIdentifier(paramString));
    if (paramString != null) {
      try
      {
        paramString = paramString.hy().getEncoded();
        return paramString;
      }
      catch (Exception paramString)
      {
        throw new RuntimeException("error encoding " + paramString.toString());
      }
    }
    return null;
  }
  
  public Set getNonCriticalExtensionOIDs()
  {
    return ﺑ(false);
  }
  
  public Date getRevocationDate()
  {
    return this.aYf.hZ().getDate();
  }
  
  public BigInteger getSerialNumber()
  {
    return this.aYf.hY().eA();
  }
  
  public boolean hasExtensions()
  {
    return this.aYf.gX() != null;
  }
  
  public boolean hasUnsupportedCriticalExtension()
  {
    Set localSet = getCriticalExtensionOIDs();
    return (localSet != null) && (!localSet.isEmpty());
  }
  
  public int hashCode()
  {
    if (!this.aYi)
    {
      this.aYh = super.hashCode();
      this.aYi = true;
    }
    return this.aYh;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("      userCertificate: ").append(getSerialNumber()).append(str);
    localStringBuffer.append("       revocationDate: ").append(getRevocationDate()).append(str);
    localStringBuffer.append("       certificateIssuer: ").append(getCertificateIssuer()).append(str);
    Extensions localExtensions = this.aYf.gX();
    if (localExtensions != null)
    {
      Enumeration localEnumeration = localExtensions.hA();
      if (localEnumeration.hasMoreElements())
      {
        localStringBuffer.append("   crlEntryExtensions:").append(str);
        while (localEnumeration.hasMoreElements())
        {
          ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
          Extension localExtension = localExtensions.ʻ(localASN1ObjectIdentifier);
          if (localExtension.hy() != null)
          {
            ASN1InputStream localASN1InputStream = new ASN1InputStream(localExtension.hy().eM());
            localStringBuffer.append("                       critical(").append(localExtension.isCritical()).append(") ");
            try
            {
              if (localASN1ObjectIdentifier.equals(X509Extension.ayP))
              {
                localStringBuffer.append(CRLReason.Ⅰ(ASN1Enumerated.ᵛ(localASN1InputStream.eH()))).append(str);
              }
              else if (localASN1ObjectIdentifier.equals(X509Extension.ayU))
              {
                localStringBuffer.append("Certificate issuer: ").append(GeneralNames.＿(localASN1InputStream.eH())).append(str);
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
    }
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.X509CRLEntryObject
 * JD-Core Version:    0.7.0.1
 */