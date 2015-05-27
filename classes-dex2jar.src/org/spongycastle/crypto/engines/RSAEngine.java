package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;

public class RSAEngine
  implements AsymmetricBlockCipher
{
  private RSACoreEngine aLk;
  
  public int iB()
  {
    return this.aLk.iB();
  }
  
  public int iC()
  {
    return this.aLk.iC();
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (this.aLk == null) {
      this.aLk = new RSACoreEngine();
    }
    this.aLk.ˊ(paramBoolean, paramCipherParameters);
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aLk == null) {
      throw new IllegalStateException("RSA engine not initialised");
    }
    return this.aLk.ʻ(this.aLk.ʼ(this.aLk.ᵎ(paramArrayOfByte, paramInt1, paramInt2)));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RSAEngine
 * JD-Core Version:    0.7.0.1
 */