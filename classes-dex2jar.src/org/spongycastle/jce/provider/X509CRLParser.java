package org.spongycastle.jce.provider;

import java.io.BufferedInputStream;
import java.io.InputStream;
import java.security.cert.CRL;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.SignedData;
import org.spongycastle.asn1.x509.CertificateList;
import org.spongycastle.x509.X509StreamParserSpi;
import org.spongycastle.x509.util.StreamParsingException;

public class X509CRLParser
  extends X509StreamParserSpi
{
  private static final PEMUtil bbO = new PEMUtil("CRL");
  private ASN1Set aXS = null;
  private int aXT = 0;
  private InputStream aXU = null;
  
  private CRL nJ()
  {
    if ((this.aXS == null) || (this.aXT >= this.aXS.size())) {
      return null;
    }
    ASN1Set localASN1Set = this.aXS;
    int i = this.aXT;
    this.aXT = (i + 1);
    return new X509CRLObject(CertificateList.丶(localASN1Set.ϲ(i)));
  }
  
  private CRL ˇ(InputStream paramInputStream)
  {
    paramInputStream = (ASN1Sequence)new ASN1InputStream(paramInputStream).eH();
    if ((paramInputStream.size() > 1) && ((paramInputStream.ϲ(0) instanceof ASN1ObjectIdentifier)) && (paramInputStream.ϲ(0).equals(PKCSObjectIdentifiers.aeC)))
    {
      this.aXS = new SignedData(ASN1Sequence.ᐝ((ASN1TaggedObject)paramInputStream.ϲ(1), true)).gp();
      return nJ();
    }
    return new X509CRLObject(CertificateList.丶(paramInputStream));
  }
  
  private CRL ⁱ(InputStream paramInputStream)
  {
    paramInputStream = bbO.ﹺ(paramInputStream);
    if (paramInputStream != null) {
      return new X509CRLObject(CertificateList.丶(paramInputStream));
    }
    return null;
  }
  
  public Object pb()
  {
    try
    {
      if (this.aXS != null)
      {
        if (this.aXT != this.aXS.size())
        {
          localCRL = nJ();
          return localCRL;
        }
        this.aXS = null;
        this.aXT = 0;
        return null;
      }
      this.aXU.mark(10);
      int i = this.aXU.read();
      if (i == -1) {
        return null;
      }
      if (i != 48)
      {
        this.aXU.reset();
        localCRL = ⁱ(this.aXU);
        return localCRL;
      }
      this.aXU.reset();
      CRL localCRL = ˇ(this.aXU);
      return localCRL;
    }
    catch (Exception localException)
    {
      throw new StreamParsingException(localException.toString(), localException);
    }
  }
  
  public void ˆ(InputStream paramInputStream)
  {
    this.aXU = paramInputStream;
    this.aXS = null;
    this.aXT = 0;
    if (!this.aXU.markSupported()) {
      this.aXU = new BufferedInputStream(this.aXU);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.X509CRLParser
 * JD-Core Version:    0.7.0.1
 */