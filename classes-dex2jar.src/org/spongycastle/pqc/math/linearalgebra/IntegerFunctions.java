package org.spongycastle.pqc.math.linearalgebra;

import java.math.BigInteger;
import java.security.SecureRandom;

public final class IntegerFunctions
{
  private static final BigInteger ONE;
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  private static SecureRandom aKZ = null;
  private static final BigInteger aKc;
  private static final BigInteger bci;
  private static final int[] bjn;
  private static final int[] bjo = { 0, 1, 0, -1, 0, -1, 0, 1 };
  
  static
  {
    ONE = BigInteger.valueOf(1L);
    aKc = BigInteger.valueOf(2L);
    bci = BigInteger.valueOf(4L);
    bjn = new int[] { 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41 };
  }
  
  public static int Ꭻ(int paramInt)
  {
    if (paramInt == 0) {
      return 1;
    }
    if (paramInt < 0) {
      paramInt = -paramInt;
    }
    int i = 0;
    while (paramInt > 0)
    {
      i += 1;
      paramInt >>>= 8;
    }
    return i;
  }
  
  public static BigInteger ᵄ(int paramInt1, int paramInt2)
  {
    BigInteger localBigInteger = ONE;
    if (paramInt1 == 0)
    {
      if (paramInt2 == 0) {
        return localBigInteger;
      }
      return ZERO;
    }
    int i = paramInt2;
    if (paramInt2 > paramInt1 >>> 1) {
      i = paramInt1 - paramInt2;
    }
    paramInt2 = 1;
    while (paramInt2 <= i)
    {
      localBigInteger = localBigInteger.multiply(BigInteger.valueOf(paramInt1 - (paramInt2 - 1))).divide(BigInteger.valueOf(paramInt2));
      paramInt2 += 1;
    }
    return localBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.IntegerFunctions
 * JD-Core Version:    0.7.0.1
 */