package org.spongycastle.pqc.math.linearalgebra;

import java.math.BigInteger;

public final class BigIntUtils
{
  public static byte[] ՙ(BigInteger paramBigInteger)
  {
    byte[] arrayOfByte = paramBigInteger.toByteArray();
    if ((arrayOfByte.length == 1) || ((paramBigInteger.bitLength() & 0x7) != 0)) {
      return arrayOfByte;
    }
    paramBigInteger = new byte[paramBigInteger.bitLength() >> 3];
    System.arraycopy(arrayOfByte, 1, paramBigInteger, 0, paramBigInteger.length);
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.BigIntUtils
 * JD-Core Version:    0.7.0.1
 */