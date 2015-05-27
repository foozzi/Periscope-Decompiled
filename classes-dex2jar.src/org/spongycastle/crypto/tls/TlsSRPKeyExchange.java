package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.agreement.srp.SRP6Client;
import org.spongycastle.crypto.agreement.srp.SRP6Util;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.util.PublicKeyFactory;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.io.TeeInputStream;

public class TlsSRPKeyExchange
  extends AbstractTlsKeyExchange
{
  protected BigInteger aFN;
  protected byte[] aFe;
  protected TlsSigner aUX;
  protected AsymmetricKeyParameter aUZ;
  protected byte[] aVP;
  protected byte[] aVQ;
  protected SRP6Client aVR;
  
  public boolean lK()
  {
    return true;
  }
  
  public void mQ()
  {
    if (this.aUX != null) {
      throw new TlsFatalAlert((short)10);
    }
  }
  
  public byte[] mR()
  {
    try
    {
      byte[] arrayOfByte = BigIntegers.ᵎ(this.aVR.ˊ(this.aFN));
      return arrayOfByte;
    }
    catch (CryptoException localCryptoException)
    {
      throw new TlsFatalAlert((short)47);
    }
  }
  
  public void ʽ(OutputStream paramOutputStream)
  {
    TlsUtils.ˎ(BigIntegers.ᵎ(this.aVR.ˊ(this.aVQ, this.aVP, this.aFe)), paramOutputStream);
  }
  
  public void ˈ(InputStream paramInputStream)
  {
    Object localObject3 = this.aSQ.lH();
    Object localObject1 = null;
    Object localObject2 = paramInputStream;
    if (this.aUX != null)
    {
      localObject1 = new SignerInputBuffer();
      localObject2 = new TeeInputStream(paramInputStream, (OutputStream)localObject1);
    }
    byte[] arrayOfByte3 = TlsUtils.ᴵ((InputStream)localObject2);
    byte[] arrayOfByte2 = TlsUtils.ᴵ((InputStream)localObject2);
    byte[] arrayOfByte1 = TlsUtils.ٴ((InputStream)localObject2);
    localObject2 = TlsUtils.ᴵ((InputStream)localObject2);
    if (localObject1 != null)
    {
      paramInputStream = DigitallySigned.ˋ(this.aSQ, paramInputStream);
      localObject3 = ˊ(this.aUX, paramInputStream.mm(), (SecurityParameters)localObject3);
      ((SignerInputBuffer)localObject1).ˊ((Signer)localObject3);
      if (!((Signer)localObject3).ᵔ(paramInputStream.getSignature())) {
        throw new TlsFatalAlert((short)51);
      }
    }
    paramInputStream = new BigInteger(1, arrayOfByte3);
    localObject1 = new BigInteger(1, arrayOfByte2);
    this.aVQ = arrayOfByte1;
    try
    {
      this.aFN = SRP6Util.ˊ(paramInputStream, new BigInteger(1, (byte[])localObject2));
    }
    catch (CryptoException paramInputStream)
    {
      throw new TlsFatalAlert((short)47);
    }
    this.aVR.ˊ(paramInputStream, (BigInteger)localObject1, TlsUtils.ͺ((short)2), this.aSQ.lG());
  }
  
  protected Signer ˊ(TlsSigner paramTlsSigner, SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, SecurityParameters paramSecurityParameters)
  {
    paramTlsSigner = paramTlsSigner.ˊ(paramSignatureAndHashAlgorithm, this.aUZ);
    paramTlsSigner.update(paramSecurityParameters.aUz, 0, paramSecurityParameters.aUz.length);
    paramTlsSigner.update(paramSecurityParameters.aUA, 0, paramSecurityParameters.aUA.length);
    return paramTlsSigner;
  }
  
  public void ˊ(Certificate paramCertificate)
  {
    if (this.aUX == null) {
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
    if (!this.aUX.ˎ(this.aUZ)) {
      throw new TlsFatalAlert((short)46);
    }
    TlsUtils.ˊ(localCertificate, 128);
    super.ˊ(paramCertificate);
  }
  
  public void ˊ(TlsContext paramTlsContext)
  {
    super.ˊ(paramTlsContext);
    if (this.aUX != null) {
      this.aUX.ˊ(paramTlsContext);
    }
  }
  
  public void ˋ(CertificateRequest paramCertificateRequest)
  {
    throw new TlsFatalAlert((short)10);
  }
  
  public void ˋ(TlsCredentials paramTlsCredentials)
  {
    throw new TlsFatalAlert((short)80);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsSRPKeyExchange
 * JD-Core Version:    0.7.0.1
 */