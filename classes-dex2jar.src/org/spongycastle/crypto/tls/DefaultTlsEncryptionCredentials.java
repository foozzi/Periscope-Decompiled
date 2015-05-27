package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.RSAKeyParameters;

public class DefaultTlsEncryptionCredentials
  extends AbstractTlsEncryptionCredentials
{
  protected TlsContext aSQ;
  protected Certificate aTD;
  protected AsymmetricKeyParameter aTE;
  
  public Certificate lX()
  {
    return this.aTD;
  }
  
  public byte[] ᵥ(byte[] paramArrayOfByte)
  {
    return TlsRSAUtils.ˊ(this.aSQ, (RSAKeyParameters)this.aTE, paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DefaultTlsEncryptionCredentials
 * JD-Core Version:    0.7.0.1
 */