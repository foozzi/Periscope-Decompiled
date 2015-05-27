package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;

class RandomDSAKCalculator
  implements DSAKCalculator
{
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  private BigInteger aFA;
  private SecureRandom aFa;
  
  public boolean lA()
  {
    return false;
  }
  
  public BigInteger lB()
  {
    int i = this.aFA.bitLength();
    BigInteger localBigInteger;
    do
    {
      localBigInteger = new BigInteger(i, this.aFa);
    } while ((localBigInteger.equals(ZERO)) || (localBigInteger.compareTo(this.aFA) >= 0));
    return localBigInteger;
  }
  
  public void ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte)
  {
    throw new IllegalStateException("Operation not supported");
  }
  
  public void ˎ(BigInteger paramBigInteger, SecureRandom paramSecureRandom)
  {
    this.aFA = paramBigInteger;
    this.aFa = paramSecureRandom;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.RandomDSAKCalculator
 * JD-Core Version:    0.7.0.1
 */