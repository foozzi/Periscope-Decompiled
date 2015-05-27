package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.RSAKeyGenerationParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.spongycastle.math.ec.WNafUtil;

public class RSAKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private RSAKeyGenerationParameters aNm;
  
  public AsymmetricCipherKeyPair iF()
  {
    int i = this.aNm.getStrength();
    int j = i >>> 1;
    int k = i - j;
    int m = i / 3;
    BigInteger localBigInteger5 = this.aNm.getPublicExponent();
    BigInteger localBigInteger1 = ˊ(k, localBigInteger5);
    BigInteger localBigInteger6;
    for (;;)
    {
      localBigInteger4 = ˊ(j, localBigInteger5);
      if (localBigInteger4.subtract(localBigInteger1).abs().bitLength() >= m)
      {
        localBigInteger6 = localBigInteger1.multiply(localBigInteger4);
        if (localBigInteger6.bitLength() != i)
        {
          localBigInteger1 = localBigInteger1.max(localBigInteger4);
        }
        else
        {
          if (WNafUtil.ᐨ(localBigInteger6) >= i >>> 2) {
            break;
          }
          localBigInteger1 = ˊ(k, localBigInteger5);
        }
      }
    }
    BigInteger localBigInteger3 = localBigInteger1;
    BigInteger localBigInteger2 = localBigInteger4;
    if (localBigInteger1.compareTo(localBigInteger4) < 0)
    {
      localBigInteger3 = localBigInteger4;
      localBigInteger2 = localBigInteger1;
    }
    BigInteger localBigInteger4 = localBigInteger3.subtract(ONE);
    BigInteger localBigInteger7 = localBigInteger2.subtract(ONE);
    localBigInteger1 = localBigInteger5.modInverse(localBigInteger4.multiply(localBigInteger7));
    localBigInteger4 = localBigInteger1.remainder(localBigInteger4);
    localBigInteger7 = localBigInteger1.remainder(localBigInteger7);
    BigInteger localBigInteger8 = localBigInteger2.modInverse(localBigInteger3);
    return new AsymmetricCipherKeyPair(new RSAKeyParameters(false, localBigInteger6, localBigInteger5), new RSAPrivateCrtKeyParameters(localBigInteger6, localBigInteger5, localBigInteger1, localBigInteger3, localBigInteger2, localBigInteger4, localBigInteger7, localBigInteger8));
  }
  
  protected BigInteger ˊ(int paramInt, BigInteger paramBigInteger)
  {
    BigInteger localBigInteger;
    do
    {
      localBigInteger = new BigInteger(paramInt, 1, this.aNm.iN());
    } while ((localBigInteger.mod(paramBigInteger).equals(ONE)) || (!localBigInteger.isProbablePrime(this.aNm.kD())) || (!paramBigInteger.gcd(localBigInteger.subtract(ONE)).equals(ONE)));
    return localBigInteger;
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.aNm = ((RSAKeyGenerationParameters)paramKeyGenerationParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.RSAKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */