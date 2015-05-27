package org.spongycastle.crypto.tls;

import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Vector;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;

public class TlsDHKeyExchange
  extends AbstractTlsKeyExchange
{
  protected static final BigInteger ONE = BigInteger.valueOf(1L);
  protected static final BigInteger aKc = BigInteger.valueOf(2L);
  protected TlsSigner aUX;
  protected DHParameters aUY;
  protected AsymmetricKeyParameter aUZ;
  protected DHPublicKeyParameters aVa;
  protected TlsAgreementCredentials aVb;
  protected DHPrivateKeyParameters aVc;
  protected DHPrivateKeyParameters aVd;
  protected DHPublicKeyParameters aVe;
  
  public TlsDHKeyExchange(int paramInt, Vector paramVector, DHParameters paramDHParameters)
  {
    super(paramInt, paramVector);
    switch (paramInt)
    {
    default: 
      break;
    case 7: 
    case 9: 
      this.aUX = null;
      break;
    case 5: 
      this.aUX = new TlsRSASigner();
      break;
    case 3: 
      this.aUX = new TlsDSSSigner();
      break;
    }
    throw new IllegalArgumentException("unsupported key exchange algorithm");
    this.aUY = paramDHParameters;
  }
  
  public boolean lK()
  {
    switch (this.aSP)
    {
    default: 
      break;
    case 3: 
    case 5: 
    case 11: 
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
      return this.aVb.ˋ(this.aVa);
    }
    if (this.aVd != null) {
      return TlsDHUtils.ˊ(this.aVe, this.aVd);
    }
    if (this.aVc != null) {
      return TlsDHUtils.ˊ(this.aVa, this.aVc);
    }
    throw new TlsFatalAlert((short)80);
  }
  
  public void ʽ(OutputStream paramOutputStream)
  {
    if (this.aVb == null) {
      this.aVc = TlsDHUtils.ˊ(this.aSQ.lG(), this.aVa.kA(), paramOutputStream);
    }
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
        this.aVa = TlsDHUtils.ˊ((DHPublicKeyParameters)this.aUZ);
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
      case 3: 
      case 4: 
      case 64: 
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
 * Qualified Name:     org.spongycastle.crypto.tls.TlsDHKeyExchange
 * JD-Core Version:    0.7.0.1
 */