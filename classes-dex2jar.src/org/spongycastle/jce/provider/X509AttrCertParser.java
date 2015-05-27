package org.spongycastle.jce.provider;

import java.io.BufferedInputStream;
import java.io.InputStream;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.SignedData;
import org.spongycastle.x509.X509AttributeCertificate;
import org.spongycastle.x509.X509StreamParserSpi;
import org.spongycastle.x509.X509V2AttributeCertificate;
import org.spongycastle.x509.util.StreamParsingException;

public class X509AttrCertParser
  extends X509StreamParserSpi
{
  private static final PEMUtil bbO = new PEMUtil("ATTRIBUTE CERTIFICATE");
  private ASN1Set aXS = null;
  private int aXT = 0;
  private InputStream aXU = null;
  
  private X509AttributeCertificate pa()
  {
    if (this.aXS != null) {
      while (this.aXT < this.aXS.size())
      {
        Object localObject = this.aXS;
        int i = this.aXT;
        this.aXT = (i + 1);
        localObject = ((ASN1Set)localObject).ϲ(i);
        if (((localObject instanceof ASN1TaggedObject)) && (((ASN1TaggedObject)localObject).eW() == 2)) {
          return new X509V2AttributeCertificate(ASN1Sequence.ᐝ((ASN1TaggedObject)localObject, false).getEncoded());
        }
      }
    }
    return null;
  }
  
  private X509AttributeCertificate ʳ(InputStream paramInputStream)
  {
    paramInputStream = (ASN1Sequence)new ASN1InputStream(paramInputStream).eH();
    if ((paramInputStream.size() > 1) && ((paramInputStream.ϲ(0) instanceof ASN1ObjectIdentifier)) && (paramInputStream.ϲ(0).equals(PKCSObjectIdentifiers.aeC)))
    {
      this.aXS = new SignedData(ASN1Sequence.ᐝ((ASN1TaggedObject)paramInputStream.ϲ(1), true)).go();
      return pa();
    }
    return new X509V2AttributeCertificate(paramInputStream.getEncoded());
  }
  
  private X509AttributeCertificate ʴ(InputStream paramInputStream)
  {
    paramInputStream = bbO.ﹺ(paramInputStream);
    if (paramInputStream != null) {
      return new X509V2AttributeCertificate(paramInputStream.getEncoded());
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
          localX509AttributeCertificate = pa();
          return localX509AttributeCertificate;
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
        localX509AttributeCertificate = ʴ(this.aXU);
        return localX509AttributeCertificate;
      }
      this.aXU.reset();
      X509AttributeCertificate localX509AttributeCertificate = ʳ(this.aXU);
      return localX509AttributeCertificate;
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
 * Qualified Name:     org.spongycastle.jce.provider.X509AttrCertParser
 * JD-Core Version:    0.7.0.1
 */