package org.spongycastle.crypto.agreement.jpake;

import java.math.BigInteger;

public class JPAKEPrimeOrderGroup
{
  private final BigInteger aFA;
  private final BigInteger aFB;
  private final BigInteger aFz;
  
  JPAKEPrimeOrderGroup(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, boolean paramBoolean)
  {
    JPAKEUtil.ˎ(paramBigInteger1, "p");
    JPAKEUtil.ˎ(paramBigInteger2, "q");
    JPAKEUtil.ˎ(paramBigInteger3, "g");
    if (!paramBoolean)
    {
      if (!paramBigInteger1.subtract(JPAKEUtil.ONE).mod(paramBigInteger2).equals(JPAKEUtil.ZERO)) {
        throw new IllegalArgumentException("p-1 must be evenly divisible by q");
      }
      if ((paramBigInteger3.compareTo(BigInteger.valueOf(2L)) == -1) || (paramBigInteger3.compareTo(paramBigInteger1.subtract(JPAKEUtil.ONE)) == 1)) {
        throw new IllegalArgumentException("g must be in [2, p-1]");
      }
      if (!paramBigInteger3.modPow(paramBigInteger2, paramBigInteger1).equals(JPAKEUtil.ONE)) {
        throw new IllegalArgumentException("g^q mod p must equal 1");
      }
      if (!paramBigInteger1.isProbablePrime(20)) {
        throw new IllegalArgumentException("p must be prime");
      }
      if (!paramBigInteger2.isProbablePrime(20)) {
        throw new IllegalArgumentException("q must be prime");
      }
    }
    this.aFz = paramBigInteger1;
    this.aFA = paramBigInteger2;
    this.aFB = paramBigInteger3;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.jpake.JPAKEPrimeOrderGroup
 * JD-Core Version:    0.7.0.1
 */