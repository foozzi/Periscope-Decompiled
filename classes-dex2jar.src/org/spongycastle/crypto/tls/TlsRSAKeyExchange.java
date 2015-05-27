package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Vector;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;
import org.spongycastle.util.io.Streams;

public class TlsRSAKeyExchange
  extends AbstractTlsKeyExchange
{
  protected AsymmetricKeyParameter aUZ = null;
  protected byte[] aVA;
  protected RSAKeyParameters aVy = null;
  protected TlsEncryptionCredentials aVz = null;
  
  public TlsRSAKeyExchange(Vector paramVector)
  {
    super(1, paramVector);
  }
  
  public void mQ()
  {
    throw new TlsFatalAlert((short)10);
  }
  
  public byte[] mR()
  {
    if (this.aVA == null) {
      throw new TlsFatalAlert((short)80);
    }
    byte[] arrayOfByte = this.aVA;
    this.aVA = null;
    return arrayOfByte;
  }
  
  public void ʽ(OutputStream paramOutputStream)
  {
    this.aVA = TlsRSAUtils.ˊ(this.aSQ, this.aVy, paramOutputStream);
  }
  
  public void ˉ(InputStream paramInputStream)
  {
    if (TlsUtils.ˎ(this.aSQ)) {
      paramInputStream = Streams.ۥ(paramInputStream);
    } else {
      paramInputStream = TlsUtils.ᴵ(paramInputStream);
    }
    this.aVA = this.aVz.ᵥ(paramInputStream);
  }
  
  protected RSAKeyParameters ˊ(RSAKeyParameters paramRSAKeyParameters)
  {
    if (!paramRSAKeyParameters.getExponent().isProbablePrime(2)) {
      throw new TlsFatalAlert((short)47);
    }
    return paramRSAKeyParameters;
  }
  
  public void ˊ(Certificate paramCertificate)
  {
    if (paramCertificate.isEmpty()) {
      throw new TlsFatalAlert((short)42);
    }
    org.spongycastle.asn1.x509.Certificate localCertificate = paramCertificate.ץ(0);
    SubjectPublicKeyInfo localSubjectPublicKeyInfo = localCertificate.hj();
    try
    {
      this.aUZ = PublicKeyFactory.ˊ(localSubjectPublicKeyInfo);
    }
    catch (RuntimeException paramCertificate)
    {
      throw new TlsFatalAlert((short)43);
    }
    if (this.aUZ.isPrivate()) {
      throw new TlsFatalAlert((short)80);
    }
    this.aVy = ˊ((RSAKeyParameters)this.aUZ);
    TlsUtils.ˊ(localCertificate, 32);
    super.ˊ(paramCertificate);
  }
  
  public void ˊ(TlsCredentials paramTlsCredentials)
  {
    if (!(paramTlsCredentials instanceof TlsEncryptionCredentials)) {
      throw new TlsFatalAlert((short)80);
    }
    ˊ(paramTlsCredentials.lX());
    this.aVz = ((TlsEncryptionCredentials)paramTlsCredentials);
  }
  
  public void ˋ(CertificateRequest paramCertificateRequest)
  {
    paramCertificateRequest = paramCertificateRequest.lR();
    int i = 0;
    while (i < paramCertificateRequest.length)
    {
      switch (paramCertificateRequest[i])
      {
      default: 
        break;
      case 1: 
      case 2: 
      case 64: 
        break;
      }
      throw new TlsFatalAlert((short)47);
      i += 1;
    }
  }
  
  public void ˋ(TlsCredentials paramTlsCredentials)
  {
    if (!(paramTlsCredentials instanceof TlsSignerCredentials)) {
      throw new TlsFatalAlert((short)80);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsRSAKeyExchange
 * JD-Core Version:    0.7.0.1
 */