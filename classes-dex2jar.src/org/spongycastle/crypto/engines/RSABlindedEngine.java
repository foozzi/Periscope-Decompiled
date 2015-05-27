package org.spongycastle.crypto.engines;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.spongycastle.util.BigIntegers;

public class RSABlindedEngine
  implements AsymmetricBlockCipher
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private SecureRandom aFa;
  private RSACoreEngine aLk = new RSACoreEngine();
  private RSAKeyParameters aLl;
  
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
    this.aLk.ˊ(paramBoolean, paramCipherParameters);
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
      this.aLl = ((RSAKeyParameters)paramCipherParameters.lh());
      this.aFa = paramCipherParameters.iN();
      return;
    }
    this.aLl = ((RSAKeyParameters)paramCipherParameters);
    this.aFa = new SecureRandom();
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aLl == null) {
      throw new IllegalStateException("RSA engine not initialised");
    }
    paramArrayOfByte = this.aLk.ᵎ(paramArrayOfByte, paramInt1, paramInt2);
    if ((this.aLl instanceof RSAPrivateCrtKeyParameters))
    {
      Object localObject = (RSAPrivateCrtKeyParameters)this.aLl;
      BigInteger localBigInteger1 = ((RSAPrivateCrtKeyParameters)localObject).getPublicExponent();
      if (localBigInteger1 != null)
      {
        localObject = ((RSAPrivateCrtKeyParameters)localObject).getModulus();
        BigInteger localBigInteger2 = BigIntegers.ˏ(ONE, ((BigInteger)localObject).subtract(ONE), this.aFa);
        paramArrayOfByte = localBigInteger2.modPow(localBigInteger1, (BigInteger)localObject).multiply(paramArrayOfByte).mod((BigInteger)localObject);
        paramArrayOfByte = this.aLk.ʼ(paramArrayOfByte).multiply(localBigInteger2.modInverse((BigInteger)localObject)).mod((BigInteger)localObject);
      }
      else
      {
        paramArrayOfByte = this.aLk.ʼ(paramArrayOfByte);
      }
    }
    else
    {
      paramArrayOfByte = this.aLk.ʼ(paramArrayOfByte);
    }
    return this.aLk.ʻ(paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RSABlindedEngine
 * JD-Core Version:    0.7.0.1
 */