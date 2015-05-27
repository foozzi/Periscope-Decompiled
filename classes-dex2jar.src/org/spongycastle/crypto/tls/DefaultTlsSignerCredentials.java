package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public class DefaultTlsSignerCredentials
  extends AbstractTlsSignerCredentials
{
  protected TlsContext aSQ;
  protected Certificate aTD;
  protected AsymmetricKeyParameter aTE;
  protected SignatureAndHashAlgorithm aTH;
  protected TlsSigner aTI;
  
  public SignatureAndHashAlgorithm lO()
  {
    return this.aTH;
  }
  
  public Certificate lX()
  {
    return this.aTD;
  }
  
  public byte[] ﯨ(byte[] paramArrayOfByte)
  {
    try
    {
      if (TlsUtils.ᐝ(this.aSQ))
      {
        paramArrayOfByte = this.aTI.ˊ(this.aTH, this.aTE, paramArrayOfByte);
        return paramArrayOfByte;
      }
      paramArrayOfByte = this.aTI.ˊ(this.aTE, paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (CryptoException paramArrayOfByte)
    {
      throw new TlsFatalAlert((short)80);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DefaultTlsSignerCredentials
 * JD-Core Version:    0.7.0.1
 */