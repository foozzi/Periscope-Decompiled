package org.spongycastle.util;

import java.math.BigInteger;
import java.security.SecureRandom;

public final class BigIntegers
{
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  
  public static byte[] ʻ(int paramInt, BigInteger paramBigInteger)
  {
    paramBigInteger = paramBigInteger.toByteArray();
    if (paramBigInteger.length == paramInt) {
      return paramBigInteger;
    }
    int i;
    if (paramBigInteger[0] == 0) {
      i = 1;
    } else {
      i = 0;
    }
    int j = paramBigInteger.length - i;
    if (j > paramInt) {
      throw new IllegalArgumentException("standard length exceeded for value");
    }
    byte[] arrayOfByte = new byte[paramInt];
    System.arraycopy(paramBigInteger, i, arrayOfByte, arrayOfByte.length - j, j);
    return arrayOfByte;
  }
  
  public static BigInteger ˏ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, SecureRandom paramSecureRandom)
  {
    int i = paramBigInteger1.compareTo(paramBigInteger2);
    if (i >= 0)
    {
      if (i > 0) {
        throw new IllegalArgumentException("'min' may not be greater than 'max'");
      }
      return paramBigInteger1;
    }
    if (paramBigInteger1.bitLength() > paramBigInteger2.bitLength() / 2) {
      return ˏ(ZERO, paramBigInteger2.subtract(paramBigInteger1), paramSecureRandom).add(paramBigInteger1);
    }
    i = 0;
    while (i < 1000)
    {
      BigInteger localBigInteger = new BigInteger(paramBigInteger2.bitLength(), paramSecureRandom);
      if ((localBigInteger.compareTo(paramBigInteger1) >= 0) && (localBigInteger.compareTo(paramBigInteger2) <= 0)) {
        return localBigInteger;
      }
      i += 1;
    }
    return new BigInteger(paramBigInteger2.subtract(paramBigInteger1).bitLength() - 1, paramSecureRandom).add(paramBigInteger1);
  }
  
  public static BigInteger ᐩ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if ((paramInt1 != 0) || (paramInt2 != paramArrayOfByte.length))
    {
      arrayOfByte = new byte[paramInt2];
      System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    }
    return new BigInteger(1, arrayOfByte);
  }
  
  public static byte[] ᵎ(BigInteger paramBigInteger)
  {
    paramBigInteger = paramBigInteger.toByteArray();
    if (paramBigInteger[0] == 0)
    {
      byte[] arrayOfByte = new byte[paramBigInteger.length - 1];
      System.arraycopy(paramBigInteger, 1, arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.BigIntegers
 * JD-Core Version:    0.7.0.1
 */