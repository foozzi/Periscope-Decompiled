package org.spongycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.BigIntegers;

public class SRP6Util
{
  private static BigInteger ONE = BigInteger.valueOf(1L);
  private static BigInteger ZERO = BigInteger.valueOf(0L);
  
  public static BigInteger ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    paramBigInteger1 = paramBigInteger2.mod(paramBigInteger1);
    if (paramBigInteger1.equals(ZERO)) {
      throw new CryptoException("Invalid public value: 0");
    }
    return paramBigInteger1;
  }
  
  public static BigInteger ˊ(Digest paramDigest, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    return ˋ(paramDigest, paramBigInteger1, paramBigInteger1, paramBigInteger2);
  }
  
  public static BigInteger ˊ(Digest paramDigest, BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    return ˋ(paramDigest, paramBigInteger1, paramBigInteger2, paramBigInteger3);
  }
  
  public static BigInteger ˊ(Digest paramDigest, BigInteger paramBigInteger1, BigInteger paramBigInteger2, SecureRandom paramSecureRandom)
  {
    int i = Math.min(256, paramBigInteger1.bitLength() / 2);
    return BigIntegers.ˏ(ONE.shiftLeft(i - 1), paramBigInteger1.subtract(ONE), paramSecureRandom);
  }
  
  public static BigInteger ˊ(Digest paramDigest, BigInteger paramBigInteger, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    paramBigInteger = new byte[paramDigest.iJ()];
    paramDigest.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
    paramDigest.update((byte)58);
    paramDigest.update(paramArrayOfByte3, 0, paramArrayOfByte3.length);
    paramDigest.doFinal(paramBigInteger, 0);
    paramDigest.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
    paramDigest.update(paramBigInteger, 0, paramBigInteger.length);
    paramDigest.doFinal(paramBigInteger, 0);
    return new BigInteger(1, paramBigInteger);
  }
  
  private static BigInteger ˋ(Digest paramDigest, BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    int i = (paramBigInteger1.bitLength() + 7) / 8;
    paramBigInteger1 = ˋ(paramBigInteger2, i);
    paramBigInteger2 = ˋ(paramBigInteger3, i);
    paramDigest.update(paramBigInteger1, 0, paramBigInteger1.length);
    paramDigest.update(paramBigInteger2, 0, paramBigInteger2.length);
    paramBigInteger1 = new byte[paramDigest.iJ()];
    paramDigest.doFinal(paramBigInteger1, 0);
    return new BigInteger(1, paramBigInteger1);
  }
  
  private static byte[] ˋ(BigInteger paramBigInteger, int paramInt)
  {
    byte[] arrayOfByte = BigIntegers.ᵎ(paramBigInteger);
    paramBigInteger = arrayOfByte;
    if (arrayOfByte.length < paramInt)
    {
      paramBigInteger = new byte[paramInt];
      System.arraycopy(arrayOfByte, 0, paramBigInteger, paramInt - arrayOfByte.length, arrayOfByte.length);
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.srp.SRP6Util
 * JD-Core Version:    0.7.0.1
 */