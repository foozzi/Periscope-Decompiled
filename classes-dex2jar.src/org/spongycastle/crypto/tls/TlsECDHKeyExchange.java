package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;

public class TlsECDHKeyExchange
  extends AbstractTlsKeyExchange
{
  protected int[] aSF;
  protected short[] aSG;
  protected short[] aSH;
  protected TlsSigner aUX;
  protected AsymmetricKeyParameter aUZ;
  protected TlsAgreementCredentials aVb;
  protected ECPrivateKeyParameters aVi;
  protected ECPublicKeyParameters aVj;
  
  public TlsECDHKeyExchange(int paramInt, Vector paramVector, int[] paramArrayOfInt, short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    super(paramInt, paramVector);
    switch (paramInt)
    {
    default: 
      break;
    case 19: 
      this.aUX = new TlsRSASigner();
      break;
    case 17: 
      this.aUX = new TlsECDSASigner();
      break;
    case 16: 
    case 18: 
      this.aUX = null;
      break;
    }
    throw new IllegalArgumentException("unsupported key exchange algorithm");
    this.aSP = paramInt;
    this.aSF = paramArrayOfInt;
    this.aSG = paramArrayOfShort1;
    this.aSH = paramArrayOfShort2;
  }
  
  public boolean lK()
  {
    switch (this.aSP)
    {
    default: 
      break;
    case 17: 
    case 19: 
    case 20: 
      return true;
    }
    return false;
  }
  
  public void mQ()
  {
    throw new TlsFatalAlert((short)10);
  }
  
  public byte[] mR()
  {
    if (this.aVb != null) {
      return this.aVb.ˋ(this.aVj);
    }
    if (this.aVi != null) {
      return TlsECCUtils.ˊ(this.aVj, this.aVi);
    }
    throw new TlsFatalAlert((short)80);
  }
  
  public void ʽ(OutputStream paramOutputStream)
  {
    if (this.aVb == null) {
      this.aVi = TlsECCUtils.ˊ(this.aSQ.lG(), this.aSH, this.aVj.kG(), paramOutputStream);
    }
  }
  
  public void ˉ(InputStream paramInputStream)
  {
    if (this.aVj != null) {
      return;
    }
    paramInputStream = TlsUtils.ٴ(paramInputStream);
    ECDomainParameters localECDomainParameters = this.aVi.kG();
    this.aVj = TlsECCUtils.ˊ(TlsECCUtils.ˊ(this.aSH, localECDomainParameters, paramInputStream));
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
    if (this.aUX == null)
    {
      try
      {
        this.aVj = TlsECCUtils.ˊ((ECPublicKeyParameters)this.aUZ);
      }
      catch (ClassCastException paramCertificate)
      {
        throw new TlsFatalAlert((short)46);
      }
      TlsUtils.ˊ(localCertificate, 8);
    }
    else
    {
      if (!this.aUX.ˎ(this.aUZ)) {
        throw new TlsFatalAlert((short)46);
      }
      TlsUtils.ˊ(localCertificate, 128);
    }
    super.ˊ(paramCertificate);
  }
  
  public void ˊ(TlsContext paramTlsContext)
  {
    super.ˊ(paramTlsContext);
    if (this.aUX != null) {
      this.aUX.ˊ(paramTlsContext);
    }
  }
  
  public void ˋ(Certificate paramCertificate) {}
  
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
      case 65: 
      case 66: 
        break;
      }
      throw new TlsFatalAlert((short)47);
      i += 1;
    }
  }
  
  public void ˋ(TlsCredentials paramTlsCredentials)
  {
    if ((paramTlsCredentials instanceof TlsAgreementCredentials))
    {
      this.aVb = ((TlsAgreementCredentials)paramTlsCredentials);
      return;
    }
    if ((paramTlsCredentials instanceof TlsSignerCredentials)) {
      return;
    }
    throw new TlsFatalAlert((short)80);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsECDHKeyExchange
 * JD-Core Version:    0.7.0.1
 */