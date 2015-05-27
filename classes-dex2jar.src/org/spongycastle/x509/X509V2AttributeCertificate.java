package org.spongycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x509.AttCertValidityPeriod;
import org.spongycastle.asn1.x509.AttributeCertificate;
import org.spongycastle.asn1.x509.AttributeCertificateInfo;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.Holder;
import org.spongycastle.util.Arrays;

public class X509V2AttributeCertificate
  implements X509AttributeCertificate
{
  private AttributeCertificate blc;
  private Date bld;
  private Date ble;
  
  public X509V2AttributeCertificate(InputStream paramInputStream)
  {
    this(ᐠ(paramInputStream));
  }
  
  X509V2AttributeCertificate(AttributeCertificate paramAttributeCertificate)
  {
    this.blc = paramAttributeCertificate;
    try
    {
      this.ble = paramAttributeCertificate.gR().gV().gP().getDate();
      this.bld = paramAttributeCertificate.gR().gV().gO().getDate();
      return;
    }
    catch (ParseException paramAttributeCertificate)
    {
      throw new IOException("invalid data structure in certificate!");
    }
  }
  
  public X509V2AttributeCertificate(byte[] paramArrayOfByte)
  {
    this(new ByteArrayInputStream(paramArrayOfByte));
  }
  
  private static AttributeCertificate ᐠ(InputStream paramInputStream)
  {
    try
    {
      paramInputStream = AttributeCertificate.ᕝ(new ASN1InputStream(paramInputStream).eH());
      return paramInputStream;
    }
    catch (IOException paramInputStream)
    {
      throw paramInputStream;
    }
    catch (Exception paramInputStream)
    {
      throw new IOException("exception decoding certificate structure: " + paramInputStream.toString());
    }
  }
  
  private Set ﺑ(boolean paramBoolean)
  {
    Extensions localExtensions = this.blc.gR().gX();
    if (localExtensions != null)
    {
      HashSet localHashSet = new HashSet();
      Enumeration localEnumeration = localExtensions.hA();
      while (localEnumeration.hasMoreElements())
      {
        ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
        if (localExtensions.ʻ(localASN1ObjectIdentifier).isCritical() == paramBoolean) {
          localHashSet.add(localASN1ObjectIdentifier.getId());
        }
      }
      return localHashSet;
    }
    return null;
  }
  
  public void checkValidity(Date paramDate)
  {
    if (paramDate.after(getNotAfter())) {
      throw new CertificateExpiredException("certificate expired on " + getNotAfter());
    }
    if (paramDate.before(getNotBefore())) {
      throw new CertificateNotYetValidException("certificate not valid till " + getNotBefore());
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof X509AttributeCertificate)) {
      return false;
    }
    paramObject = (X509AttributeCertificate)paramObject;
    try
    {
      boolean bool = Arrays.ﹺ(getEncoded(), paramObject.getEncoded());
      return bool;
    }
    catch (IOException paramObject) {}
    return false;
  }
  
  public Set getCriticalExtensionOIDs()
  {
    return ﺑ(true);
  }
  
  public byte[] getEncoded()
  {
    return this.blc.getEncoded();
  }
  
  public byte[] getExtensionValue(String paramString)
  {
    Extensions localExtensions = this.blc.gR().gX();
    if (localExtensions != null)
    {
      paramString = localExtensions.ʻ(new ASN1ObjectIdentifier(paramString));
      if (paramString != null) {
        try
        {
          paramString = paramString.hy().getEncoded("DER");
          return paramString;
        }
        catch (Exception paramString)
        {
          throw new RuntimeException("error encoding " + paramString.toString());
        }
      }
    }
    return null;
  }
  
  public Set getNonCriticalExtensionOIDs()
  {
    return ﺑ(false);
  }
  
  public Date getNotAfter()
  {
    return this.ble;
  }
  
  public Date getNotBefore()
  {
    return this.bld;
  }
  
  public BigInteger getSerialNumber()
  {
    return this.blc.gR().gU().eA();
  }
  
  public boolean hasUnsupportedCriticalExtension()
  {
    Set localSet = getCriticalExtensionOIDs();
    return (localSet != null) && (!localSet.isEmpty());
  }
  
  public int hashCode()
  {
    try
    {
      int i = Arrays.hashCode(getEncoded());
      return i;
    }
    catch (IOException localIOException) {}
    return 0;
  }
  
  public AttributeCertificateHolder tv()
  {
    return new AttributeCertificateHolder((ASN1Sequence)this.blc.gR().gS().eJ());
  }
  
  public AttributeCertificateIssuer ty()
  {
    return new AttributeCertificateIssuer(this.blc.gR().gT());
  }
  
  public X509Attribute[] ڊ(String paramString)
  {
    ASN1Sequence localASN1Sequence = this.blc.gR().gW();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i != localASN1Sequence.size())
    {
      X509Attribute localX509Attribute = new X509Attribute(localASN1Sequence.ϲ(i));
      if (localX509Attribute.ts().equals(paramString)) {
        localArrayList.add(localX509Attribute);
      }
      i += 1;
    }
    if (localArrayList.size() == 0) {
      return null;
    }
    return (X509Attribute[])localArrayList.toArray(new X509Attribute[localArrayList.size()]);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509V2AttributeCertificate
 * JD-Core Version:    0.7.0.1
 */