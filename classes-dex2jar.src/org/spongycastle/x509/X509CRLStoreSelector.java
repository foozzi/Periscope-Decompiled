package org.spongycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Selector;
import org.spongycastle.x509.extension.X509ExtensionUtil;

public class X509CRLStoreSelector
  extends X509CRLSelector
  implements Selector
{
  private boolean bkL = false;
  private boolean bkM = false;
  private BigInteger bkN = null;
  private byte[] bkO = null;
  private boolean bkP = false;
  private X509AttributeCertificate bkQ;
  
  public static X509CRLStoreSelector ˊ(X509CRLSelector paramX509CRLSelector)
  {
    if (paramX509CRLSelector == null) {
      throw new IllegalArgumentException("cannot create from null selector");
    }
    X509CRLStoreSelector localX509CRLStoreSelector = new X509CRLStoreSelector();
    localX509CRLStoreSelector.setCertificateChecking(paramX509CRLSelector.getCertificateChecking());
    localX509CRLStoreSelector.setDateAndTime(paramX509CRLSelector.getDateAndTime());
    try
    {
      localX509CRLStoreSelector.setIssuerNames(paramX509CRLSelector.getIssuerNames());
    }
    catch (IOException paramX509CRLSelector)
    {
      throw new IllegalArgumentException(paramX509CRLSelector.getMessage());
    }
    localX509CRLStoreSelector.setIssuers(paramX509CRLSelector.getIssuers());
    localX509CRLStoreSelector.setMaxCRLNumber(paramX509CRLSelector.getMaxCRL());
    localX509CRLStoreSelector.setMinCRLNumber(paramX509CRLSelector.getMinCRL());
    return localX509CRLStoreSelector;
  }
  
  public Object clone()
  {
    X509CRLStoreSelector localX509CRLStoreSelector = ˊ(this);
    localX509CRLStoreSelector.bkL = this.bkL;
    localX509CRLStoreSelector.bkM = this.bkM;
    localX509CRLStoreSelector.bkN = this.bkN;
    localX509CRLStoreSelector.bkQ = this.bkQ;
    localX509CRLStoreSelector.bkP = this.bkP;
    localX509CRLStoreSelector.bkO = Arrays.І(this.bkO);
    return localX509CRLStoreSelector;
  }
  
  public boolean match(CRL paramCRL)
  {
    return ɨ(paramCRL);
  }
  
  public boolean tA()
  {
    return this.bkL;
  }
  
  public boolean tB()
  {
    return this.bkM;
  }
  
  public X509AttributeCertificate tz()
  {
    return this.bkQ;
  }
  
  public boolean ɨ(Object paramObject)
  {
    if (!(paramObject instanceof X509CRL)) {
      return false;
    }
    X509CRL localX509CRL = (X509CRL)paramObject;
    Object localObject = null;
    try
    {
      byte[] arrayOfByte = localX509CRL.getExtensionValue(X509Extensions.aBu.getId());
      if (arrayOfByte != null) {
        localObject = ASN1Integer.ﯨ(X509ExtensionUtil.ᑦ(arrayOfByte));
      }
    }
    catch (Exception paramObject)
    {
      return false;
    }
    if ((tA()) && (localObject == null)) {
      return false;
    }
    if ((tB()) && (localObject != null)) {
      return false;
    }
    if ((localObject != null) && (this.bkN != null) && (((ASN1Integer)localObject).eI().compareTo(this.bkN) == 1)) {
      return false;
    }
    if (this.bkP)
    {
      localObject = localX509CRL.getExtensionValue(X509Extensions.aBv.getId());
      if (this.bkO == null)
      {
        if (localObject != null) {
          return false;
        }
      }
      else if (!Arrays.ﹺ((byte[])localObject, this.bkO)) {
        return false;
      }
    }
    return super.match((X509CRL)paramObject);
  }
  
  public void ˊ(X509AttributeCertificate paramX509AttributeCertificate)
  {
    this.bkQ = paramX509AttributeCertificate;
  }
  
  public void Ӏ(boolean paramBoolean)
  {
    this.bkP = paramBoolean;
  }
  
  public void ײ(boolean paramBoolean)
  {
    this.bkM = paramBoolean;
  }
  
  public void ᑋ(byte[] paramArrayOfByte)
  {
    this.bkO = Arrays.І(paramArrayOfByte);
  }
  
  public void ᵔ(BigInteger paramBigInteger)
  {
    this.bkN = paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509CRLStoreSelector
 * JD-Core Version:    0.7.0.1
 */