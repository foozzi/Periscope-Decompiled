package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.math.ec.WNafUtil;
import org.spongycastle.util.BigIntegers;

class DHKeyGeneratorHelper
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private static final BigInteger aKc = BigInteger.valueOf(2L);
  static final DHKeyGeneratorHelper aMF = new DHKeyGeneratorHelper();
  
  BigInteger ˊ(DHParameters paramDHParameters, BigInteger paramBigInteger)
  {
    return paramDHParameters.getG().modPow(paramBigInteger, paramDHParameters.getP());
  }
  
  BigInteger ˊ(DHParameters paramDHParameters, SecureRandom paramSecureRandom)
  {
    int i = paramDHParameters.getL();
    if (i != 0) {
      for (;;)
      {
        paramDHParameters = new BigInteger(i, paramSecureRandom).setBit(i - 1);
        if (WNafUtil.ᐨ(paramDHParameters) >= i >>> 2) {
          return paramDHParameters;
        }
      }
    }
    BigInteger localBigInteger1 = aKc;
    i = paramDHParameters.getM();
    if (i != 0) {
      localBigInteger1 = ONE.shiftLeft(i - 1);
    }
    BigInteger localBigInteger3 = paramDHParameters.getQ();
    BigInteger localBigInteger2 = localBigInteger3;
    if (localBigInteger3 == null) {
      localBigInteger2 = paramDHParameters.getP();
    }
    paramDHParameters = localBigInteger2.subtract(aKc);
    i = paramDHParameters.bitLength();
    for (;;)
    {
      localBigInteger2 = BigIntegers.ˏ(localBigInteger1, paramDHParameters, paramSecureRandom);
      if (WNafUtil.ᐨ(localBigInteger2) >= i >>> 2) {
        return localBigInteger2;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DHKeyGeneratorHelper
 * JD-Core Version:    0.7.0.1
 */