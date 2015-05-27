package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.math.ec.WNafUtil;
import org.spongycastle.util.BigIntegers;

class DHParametersHelper
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private static final BigInteger aKc = BigInteger.valueOf(2L);
  
  static BigInteger ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, SecureRandom paramSecureRandom)
  {
    paramBigInteger2 = paramBigInteger1.subtract(aKc);
    BigInteger localBigInteger;
    do
    {
      localBigInteger = BigIntegers.ˏ(aKc, paramBigInteger2, paramSecureRandom).modPow(aKc, paramBigInteger1);
    } while (localBigInteger.equals(ONE));
    return localBigInteger;
  }
  
  static BigInteger[] ˋ(int paramInt1, int paramInt2, SecureRandom paramSecureRandom)
  {
    BigInteger localBigInteger1;
    BigInteger localBigInteger2;
    do
    {
      localBigInteger1 = new BigInteger(paramInt1 - 1, 2, paramSecureRandom);
      localBigInteger2 = localBigInteger1.shiftLeft(1).add(ONE);
    } while ((!localBigInteger2.isProbablePrime(paramInt2)) || ((paramInt2 > 2) && (!localBigInteger1.isProbablePrime(paramInt2 - 2))) || (WNafUtil.ᐨ(localBigInteger2) < paramInt1 >>> 2));
    return new BigInteger[] { localBigInteger2, localBigInteger1 };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DHParametersHelper
 * JD-Core Version:    0.7.0.1
 */