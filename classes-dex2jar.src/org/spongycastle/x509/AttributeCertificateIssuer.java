package org.spongycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.Principal;
import java.security.cert.CertSelector;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x509.AttCertIssuer;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.IssuerSerial;
import org.spongycastle.asn1.x509.V2Form;
import org.spongycastle.util.Selector;

public class AttributeCertificateIssuer
  implements CertSelector, Selector
{
  final ASN1Encodable bkn;
  
  public AttributeCertificateIssuer(AttCertIssuer paramAttCertIssuer)
  {
    this.bkn = paramAttCertIssuer.gN();
  }
  
  private Object[] tg()
  {
    if ((this.bkn instanceof V2Form)) {
      localObject = ((V2Form)this.bkn).ih();
    } else {
      localObject = (GeneralNames)this.bkn;
    }
    Object localObject = ((GeneralNames)localObject).hB();
    ArrayList localArrayList = new ArrayList(localObject.length);
    int i = 0;
    while (i != localObject.length)
    {
      if (localObject[i].eW() == 4) {
        try
        {
          localArrayList.add(new X500Principal(localObject[i].hw().ez().getEncoded()));
        }
        catch (IOException localIOException)
        {
          throw new RuntimeException("badly formed Name object");
        }
      }
      i += 1;
    }
    return localArrayList.toArray(new Object[localArrayList.size()]);
  }
  
  private boolean ˊ(X500Principal paramX500Principal, GeneralNames paramGeneralNames)
  {
    paramGeneralNames = paramGeneralNames.hB();
    int i = 0;
    while (i != paramGeneralNames.length)
    {
      Object localObject = paramGeneralNames[i];
      if (localObject.eW() == 4) {
        try
        {
          boolean bool = new X500Principal(localObject.hw().ez().getEncoded()).equals(paramX500Principal);
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
  
  public Object clone()
  {
    return new AttributeCertificateIssuer(AttCertIssuer.ᓫ(this.bkn));
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof AttributeCertificateIssuer)) {
      return false;
    }
    paramObject = (AttributeCertificateIssuer)paramObject;
    return this.bkn.equals(paramObject.bkn);
  }
  
  public Principal[] getPrincipals()
  {
    Object[] arrayOfObject = tg();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i != arrayOfObject.length)
    {
      if ((arrayOfObject[i] instanceof Principal)) {
        localArrayList.add(arrayOfObject[i]);
      }
      i += 1;
    }
    return (Principal[])localArrayList.toArray(new Principal[localArrayList.size()]);
  }
  
  public int hashCode()
  {
    return this.bkn.hashCode();
  }
  
  public boolean match(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      return false;
    }
    paramCertificate = (X509Certificate)paramCertificate;
    Object localObject;
    if ((this.bkn instanceof V2Form))
    {
      localObject = (V2Form)this.bkn;
      if (((V2Form)localObject).getBaseCertificateID() != null) {
        return (((V2Form)localObject).getBaseCertificateID().hE().eA().equals(paramCertificate.getSerialNumber())) && (ˊ(paramCertificate.getIssuerX500Principal(), ((V2Form)localObject).getBaseCertificateID().hD()));
      }
      localObject = ((V2Form)localObject).ih();
      if (ˊ(paramCertificate.getSubjectX500Principal(), (GeneralNames)localObject)) {
        return true;
      }
    }
    else
    {
      localObject = (GeneralNames)this.bkn;
      if (ˊ(paramCertificate.getSubjectX500Principal(), (GeneralNames)localObject)) {
        return true;
      }
    }
    return false;
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
 * Qualified Name:     org.spongycastle.x509.AttributeCertificateIssuer
 * JD-Core Version:    0.7.0.1
 */