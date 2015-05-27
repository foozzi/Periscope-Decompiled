package org.spongycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.CertSelector;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.Holder;
import org.spongycastle.asn1.x509.IssuerSerial;
import org.spongycastle.asn1.x509.ObjectDigestInfo;
import org.spongycastle.jce.PrincipalUtil;
import org.spongycastle.jce.X509Principal;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Selector;

public class AttributeCertificateHolder
  implements CertSelector, Selector
{
  final Holder aye;
  
  AttributeCertificateHolder(ASN1Sequence paramASN1Sequence)
  {
    this.aye = Holder.İ(paramASN1Sequence);
  }
  
  private boolean ˊ(X509Principal paramX509Principal, GeneralNames paramGeneralNames)
  {
    paramGeneralNames = paramGeneralNames.hB();
    int i = 0;
    while (i != paramGeneralNames.length)
    {
      Object localObject = paramGeneralNames[i];
      if (localObject.eW() == 4) {
        try
        {
          boolean bool = new X509Principal(localObject.hw().ez().getEncoded()).equals(paramX509Principal);
          if (bool) {
            return true;
          }
        }
        catch (IOException localIOException) {}
      }
      i += 1;
    }
    return false;
  }
  
  private Object[] ˊ(GeneralName[] paramArrayOfGeneralName)
  {
    ArrayList localArrayList = new ArrayList(paramArrayOfGeneralName.length);
    int i = 0;
    while (i != paramArrayOfGeneralName.length)
    {
      if (paramArrayOfGeneralName[i].eW() == 4) {
        try
        {
          localArrayList.add(new X500Principal(paramArrayOfGeneralName[i].hw().ez().getEncoded()));
        }
        catch (IOException paramArrayOfGeneralName)
        {
          throw new RuntimeException("badly formed Name object");
        }
      }
      i += 1;
    }
    return localArrayList.toArray(new Object[localArrayList.size()]);
  }
  
  private Principal[] ˊ(GeneralNames paramGeneralNames)
  {
    paramGeneralNames = ˊ(paramGeneralNames.hB());
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i != paramGeneralNames.length)
    {
      if ((paramGeneralNames[i] instanceof Principal)) {
        localArrayList.add(paramGeneralNames[i]);
      }
      i += 1;
    }
    return (Principal[])localArrayList.toArray(new Principal[localArrayList.size()]);
  }
  
  public Object clone()
  {
    return new AttributeCertificateHolder((ASN1Sequence)this.aye.eJ());
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof AttributeCertificateHolder)) {
      return false;
    }
    paramObject = (AttributeCertificateHolder)paramObject;
    return this.aye.equals(paramObject.aye);
  }
  
  public String getDigestAlgorithm()
  {
    if (this.aye.getObjectDigestInfo() != null) {
      return this.aye.getObjectDigestInfo().hO().fO().getId();
    }
    return null;
  }
  
  public int getDigestedObjectType()
  {
    if (this.aye.getObjectDigestInfo() != null) {
      return this.aye.getObjectDigestInfo().hM().eA().intValue();
    }
    return -1;
  }
  
  public Principal[] getEntityNames()
  {
    if (this.aye.getEntityName() != null) {
      return ˊ(this.aye.getEntityName());
    }
    return null;
  }
  
  public Principal[] getIssuer()
  {
    if (this.aye.getBaseCertificateID() != null) {
      return ˊ(this.aye.getBaseCertificateID().hD());
    }
    return null;
  }
  
  public byte[] getObjectDigest()
  {
    if (this.aye.getObjectDigestInfo() != null) {
      return this.aye.getObjectDigestInfo().hP().getBytes();
    }
    return null;
  }
  
  public String getOtherObjectTypeID()
  {
    if (this.aye.getObjectDigestInfo() != null) {
      this.aye.getObjectDigestInfo().hN().getId();
    }
    return null;
  }
  
  public BigInteger getSerialNumber()
  {
    if (this.aye.getBaseCertificateID() != null) {
      return this.aye.getBaseCertificateID().hE().eA();
    }
    return null;
  }
  
  public int hashCode()
  {
    return this.aye.hashCode();
  }
  
  public boolean match(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      return false;
    }
    Object localObject = (X509Certificate)paramCertificate;
    for (;;)
    {
      try
      {
        boolean bool;
        if (this.aye.getBaseCertificateID() != null)
        {
          if (this.aye.getBaseCertificateID().hE().eA().equals(((X509Certificate)localObject).getSerialNumber()))
          {
            bool = ˊ(PrincipalUtil.ᐝ((X509Certificate)localObject), this.aye.getBaseCertificateID().hD());
            if (bool) {
              return true;
            }
          }
          return false;
        }
        if (this.aye.getEntityName() != null)
        {
          bool = ˊ(PrincipalUtil.ʻ((X509Certificate)localObject), this.aye.getEntityName());
          if (bool) {
            return true;
          }
        }
        localObject = this.aye.getObjectDigestInfo();
        if (localObject != null)
        {
          try
          {
            localObject = MessageDigest.getInstance(getDigestAlgorithm(), "SC");
          }
          catch (Exception paramCertificate)
          {
            return false;
          }
          switch (getDigestedObjectType())
          {
          case 0: 
            ((MessageDigest)localObject).update(paramCertificate.getPublicKey().getEncoded());
            break;
          case 1: 
            ((MessageDigest)localObject).update(paramCertificate.getEncoded());
            bool = Arrays.ﹺ(((MessageDigest)localObject).digest(), getObjectDigest());
            if (!bool) {
              return false;
            }
            break;
          }
        }
      }
      catch (CertificateEncodingException paramCertificate)
      {
        return false;
      }
      return false;
    }
  }
  
  public boolean ɨ(Object paramObject)
  {
    if (!(paramObject instanceof X509Certificate)) {
      return false;
    }
    return match((Certificate)paramObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.AttributeCertificateHolder
 * JD-Core Version:    0.7.0.1
 */