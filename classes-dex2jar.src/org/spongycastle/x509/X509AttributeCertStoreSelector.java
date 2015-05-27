package org.spongycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.Target;
import org.spongycastle.asn1.x509.TargetInformation;
import org.spongycastle.asn1.x509.Targets;
import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.util.Selector;

public class X509AttributeCertStoreSelector
  implements Selector
{
  private AttributeCertificateHolder bkE;
  private AttributeCertificateIssuer bkF;
  private BigInteger bkG;
  private Date bkH;
  private X509AttributeCertificate bkI;
  private Collection bkJ = new HashSet();
  private Collection bkK = new HashSet();
  
  public Object clone()
  {
    X509AttributeCertStoreSelector localX509AttributeCertStoreSelector = new X509AttributeCertStoreSelector();
    localX509AttributeCertStoreSelector.bkI = this.bkI;
    localX509AttributeCertStoreSelector.bkH = tu();
    localX509AttributeCertStoreSelector.bkE = this.bkE;
    localX509AttributeCertStoreSelector.bkF = this.bkF;
    localX509AttributeCertStoreSelector.bkG = this.bkG;
    localX509AttributeCertStoreSelector.bkK = tx();
    localX509AttributeCertStoreSelector.bkJ = tw();
    return localX509AttributeCertStoreSelector;
  }
  
  public BigInteger getSerialNumber()
  {
    return this.bkG;
  }
  
  public X509AttributeCertificate tt()
  {
    return this.bkI;
  }
  
  public Date tu()
  {
    if (this.bkH != null) {
      return new Date(this.bkH.getTime());
    }
    return null;
  }
  
  public AttributeCertificateHolder tv()
  {
    return this.bkE;
  }
  
  public Collection tw()
  {
    return Collections.unmodifiableCollection(this.bkJ);
  }
  
  public Collection tx()
  {
    return Collections.unmodifiableCollection(this.bkK);
  }
  
  public boolean ɨ(Object paramObject)
  {
    if (!(paramObject instanceof X509AttributeCertificate)) {
      return false;
    }
    paramObject = (X509AttributeCertificate)paramObject;
    if ((this.bkI != null) && (!this.bkI.equals(paramObject))) {
      return false;
    }
    if ((this.bkG != null) && (!paramObject.getSerialNumber().equals(this.bkG))) {
      return false;
    }
    if ((this.bkE != null) && (!paramObject.tv().equals(this.bkE))) {
      return false;
    }
    if ((this.bkF != null) && (!paramObject.ty().equals(this.bkF))) {
      return false;
    }
    if (this.bkH != null) {
      try
      {
        paramObject.checkValidity(this.bkH);
      }
      catch (CertificateExpiredException paramObject)
      {
        return false;
      }
      catch (CertificateNotYetValidException paramObject)
      {
        return false;
      }
    }
    if ((!this.bkJ.isEmpty()) || (!this.bkK.isEmpty()))
    {
      paramObject = paramObject.getExtensionValue(X509Extensions.aBN.getId());
      if (paramObject != null)
      {
        try
        {
          paramObject = TargetInformation.า(new ASN1InputStream(((DEROctetString)DEROctetString.ՙ(paramObject)).eM()).eH());
        }
        catch (IOException paramObject)
        {
          return false;
        }
        catch (IllegalArgumentException paramObject)
        {
          return false;
        }
        paramObject = paramObject.jdMethod_if();
        int j;
        int i;
        Target[] arrayOfTarget;
        int m;
        int k;
        if (!this.bkJ.isEmpty())
        {
          j = 0;
          i = 0;
          while (i < paramObject.length)
          {
            arrayOfTarget = paramObject[i].ig();
            m = 0;
            for (;;)
            {
              k = j;
              if (m >= arrayOfTarget.length) {
                break;
              }
              if (this.bkJ.contains(GeneralName.ﻳ(arrayOfTarget[m].ie())))
              {
                k = 1;
                break;
              }
              m += 1;
            }
            i += 1;
            j = k;
          }
          if (j == 0) {
            return false;
          }
        }
        if (!this.bkK.isEmpty())
        {
          j = 0;
          i = 0;
          while (i < paramObject.length)
          {
            arrayOfTarget = paramObject[i].ig();
            m = 0;
            for (;;)
            {
              k = j;
              if (m >= arrayOfTarget.length) {
                break;
              }
              if (this.bkK.contains(GeneralName.ﻳ(arrayOfTarget[m].ic())))
              {
                k = 1;
                break;
              }
              m += 1;
            }
            i += 1;
            j = k;
          }
          if (j == 0) {
            return false;
          }
        }
      }
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509AttributeCertStoreSelector
 * JD-Core Version:    0.7.0.1
 */