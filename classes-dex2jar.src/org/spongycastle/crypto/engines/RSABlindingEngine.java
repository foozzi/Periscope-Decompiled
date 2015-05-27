package org.spongycastle.crypto.engines;

import java.math.BigInteger;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSABlindingParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;

public class RSABlindingEngine
  implements AsymmetricBlockCipher
{
  private boolean aEW;
  private RSACoreEngine aLk = new RSACoreEngine();
  private RSAKeyParameters aLl;
  private BigInteger aLm;
  
  private BigInteger ˏ(BigInteger paramBigInteger)
  {
    return paramBigInteger.multiply(this.aLm.modPow(this.aLl.getExponent(), this.aLl.getModulus())).mod(this.aLl.getModulus());
  }
  
  private BigInteger ᐝ(BigInteger paramBigInteger)
  {
    BigInteger localBigInteger = this.aLl.getModulus();
    return paramBigInteger.multiply(this.aLm.modInverse(localBigInteger)).mod(localBigInteger);
  }
  
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
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      paramCipherParameters = (RSABlindingParameters)((ParametersWithRandom)paramCipherParameters).lh();
    } else {
      paramCipherParameters = (RSABlindingParameters)paramCipherParameters;
    }
    this.aLk.ˊ(paramBoolean, paramCipherParameters.lj());
    this.aEW = paramBoolean;
    this.aLl = paramCipherParameters.lj();
    this.aLm = paramCipherParameters.lk();
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte = this.aLk.ᵎ(paramArrayOfByte, paramInt1, paramInt2);
    if (this.aEW) {
      paramArrayOfByte = ˏ(paramArrayOfByte);
    } else {
      paramArrayOfByte = ᐝ(paramArrayOfByte);
    }
    return this.aLk.ʻ(paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RSABlindingEngine
 * JD-Core Version:    0.7.0.1
 */