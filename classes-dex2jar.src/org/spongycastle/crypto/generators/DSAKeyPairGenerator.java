package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.DSAKeyGenerationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.math.ec.WNafUtil;
import org.spongycastle.util.BigIntegers;

public class DSAKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private DSAKeyGenerationParameters aMH;
  
  private static BigInteger ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    return paramBigInteger2.modPow(paramBigInteger3, paramBigInteger1);
  }
  
  private static BigInteger ˋ(BigInteger paramBigInteger, SecureRandom paramSecureRandom)
  {
    int i = paramBigInteger.bitLength();
    for (;;)
    {
      BigInteger localBigInteger = BigIntegers.ˏ(ONE, paramBigInteger.subtract(ONE), paramSecureRandom);
      if (WNafUtil.ᐨ(localBigInteger) >= i >>> 2) {
        return localBigInteger;
      }
    }
  }
  
  public AsymmetricCipherKeyPair iF()
  {
    DSAParameters localDSAParameters = this.aMH.kB();
    BigInteger localBigInteger = ˋ(localDSAParameters.getQ(), this.aMH.iN());
    return new AsymmetricCipherKeyPair(new DSAPublicKeyParameters(ˊ(localDSAParameters.getP(), localDSAParameters.getG(), localBigInteger), localDSAParameters), new DSAPrivateKeyParameters(localBigInteger, localDSAParameters));
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.aMH = ((DSAKeyGenerationParameters)paramKeyGenerationParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DSAKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */