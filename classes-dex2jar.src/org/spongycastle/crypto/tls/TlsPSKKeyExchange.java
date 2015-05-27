package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;

public class TlsPSKKeyExchange
  extends AbstractTlsKeyExchange
{
  protected DHParameters aUY;
  protected AsymmetricKeyParameter aUZ;
  protected byte[] aVA;
  protected TlsPSKIdentity aVu;
  protected byte[] aVv;
  protected DHPrivateKeyParameters aVw;
  protected DHPublicKeyParameters aVx;
  protected RSAKeyParameters aVy;
  protected TlsEncryptionCredentials aVz;
  
  public boolean lK()
  {
    switch (this.aSP)
    {
    default: 
      break;
    case 14: 
    case 24: 
      return true;
    }
    return false;
  }
  
  public byte[] lL()
  {
    this.aVv = null;
    if ((this.aVv == null) && (!lK())) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    if (this.aVv == null) {
      TlsUtils.ˎ(TlsUtils.abo, localByteArrayOutputStream);
    } else {
      TlsUtils.ˎ(this.aVv, localByteArrayOutputStream);
    }
    if (this.aSP == 14)
    {
      if (this.aUY == null) {
        throw new TlsFatalAlert((short)80);
      }
      this.aVw = TlsDHUtils.ˋ(this.aSQ.lG(), this.aUY, localByteArrayOutputStream);
    }
    else
    {
      int i = this.aSP;
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public void mQ()
  {
    if (this.aSP == 15) {
      throw new TlsFatalAlert((short)10);
    }
  }
  
  public byte[] mR()
  {
    byte[] arrayOfByte1 = this.aVu.mW();
    byte[] arrayOfByte2 = ᴠ(arrayOfByte1.length);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(arrayOfByte2.length + 4 + arrayOfByte1.length);
    TlsUtils.ˎ(arrayOfByte2, localByteArrayOutputStream);
    TlsUtils.ˎ(arrayOfByte1, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public void ʽ(OutputStream paramOutputStream)
  {
    if (this.aVv == null) {
      this.aVu.mU();
    } else {
      this.aVu.ˁ(this.aVv);
    }
    TlsUtils.ˎ(this.aVu.mV(), paramOutputStream);
    if (this.aSP == 14)
    {
      this.aVw = TlsDHUtils.ˊ(this.aSQ.lG(), this.aVx.kA(), paramOutputStream);
      return;
    }
    if (this.aSP == 24) {
      throw new TlsFatalAlert((short)80);
    }
    if (this.aSP == 15) {
      this.aVA = TlsRSAUtils.ˊ(this.aSQ, this.aVy, paramOutputStream);
    }
  }
  
  public void ˈ(InputStream paramInputStream)
  {
    this.aVv = TlsUtils.ᴵ(paramInputStream);
    if (this.aSP == 14)
    {
      this.aVx = TlsDHUtils.ˊ(ServerDHParams.ـ(paramInputStream).mH());
      return;
    }
    int i = this.aSP;
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
    if (this.aSP != 15) {
      throw new TlsFatalAlert((short)10);
    }
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
    throw new TlsFatalAlert((short)10);
  }
  
  public void ˋ(TlsCredentials paramTlsCredentials)
  {
    throw new TlsFatalAlert((short)80);
  }
  
  protected byte[] ᴠ(int paramInt)
  {
    if (this.aSP == 14)
    {
      if (this.aVw != null) {
        return TlsDHUtils.ˊ(this.aVx, this.aVw);
      }
      throw new TlsFatalAlert((short)80);
    }
    if (this.aSP == 24) {
      throw new TlsFatalAlert((short)80);
    }
    if (this.aSP == 15) {
      return this.aVA;
    }
    return new byte[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsPSKKeyExchange
 * JD-Core Version:    0.7.0.1
 */