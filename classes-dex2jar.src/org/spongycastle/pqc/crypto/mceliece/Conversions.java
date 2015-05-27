package org.spongycastle.pqc.crypto.mceliece;

import java.math.BigInteger;
import org.spongycastle.pqc.math.linearalgebra.BigIntUtils;
import org.spongycastle.pqc.math.linearalgebra.GF2Vector;
import org.spongycastle.pqc.math.linearalgebra.IntegerFunctions;

final class Conversions
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  
  public static byte[] ˊ(int paramInt1, int paramInt2, GF2Vector paramGF2Vector)
  {
    if ((paramGF2Vector.getLength() != paramInt1) || (paramGF2Vector.sr() != paramInt2)) {
      throw new IllegalArgumentException("vector has wrong length or hamming weight");
    }
    int[] arrayOfInt = paramGF2Vector.sq();
    paramGF2Vector = IntegerFunctions.ᵄ(paramInt1, paramInt2);
    Object localObject1 = ZERO;
    int j = paramInt1;
    int i = paramInt2;
    paramInt2 = 0;
    int k = j;
    while (paramInt2 < paramInt1)
    {
      BigInteger localBigInteger = paramGF2Vector.multiply(BigInteger.valueOf(k - i)).divide(BigInteger.valueOf(k));
      k -= 1;
      paramGF2Vector = localBigInteger;
      Object localObject2 = localObject1;
      j = i;
      if ((arrayOfInt[(paramInt2 >> 5)] & 1 << (paramInt2 & 0x1F)) != 0)
      {
        localObject2 = ((BigInteger)localObject1).add(localBigInteger);
        j = i - 1;
        if (k == j) {
          paramGF2Vector = ONE;
        } else {
          paramGF2Vector = localBigInteger.multiply(BigInteger.valueOf(j + 1)).divide(BigInteger.valueOf(k - j));
        }
      }
      paramInt2 += 1;
      localObject1 = localObject2;
      i = j;
    }
    return BigIntUtils.ՙ((BigInteger)localObject1);
  }
  
  public static GF2Vector ˋ(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    if (paramInt1 < paramInt2) {
      throw new IllegalArgumentException("n < t");
    }
    Object localObject2 = IntegerFunctions.ᵄ(paramInt1, paramInt2);
    Object localObject1 = new BigInteger(1, paramArrayOfByte);
    if (((BigInteger)localObject1).compareTo((BigInteger)localObject2) >= 0) {
      throw new IllegalArgumentException("Encoded number too large.");
    }
    GF2Vector localGF2Vector = new GF2Vector(paramInt1);
    int j = paramInt1;
    int i = paramInt2;
    paramInt2 = 0;
    int k = j;
    paramArrayOfByte = (byte[])localObject2;
    while (paramInt2 < paramInt1)
    {
      BigInteger localBigInteger = paramArrayOfByte.multiply(BigInteger.valueOf(k - i)).divide(BigInteger.valueOf(k));
      k -= 1;
      paramArrayOfByte = localBigInteger;
      localObject2 = localObject1;
      j = i;
      if (localBigInteger.compareTo((BigInteger)localObject1) <= 0)
      {
        localGF2Vector.ه(paramInt2);
        localObject2 = ((BigInteger)localObject1).subtract(localBigInteger);
        j = i - 1;
        if (k == j) {
          paramArrayOfByte = ONE;
        } else {
          paramArrayOfByte = localBigInteger.multiply(BigInteger.valueOf(j + 1)).divide(BigInteger.valueOf(k - j));
        }
      }
      paramInt2 += 1;
      localObject1 = localObject2;
      i = j;
    }
    return localGF2Vector;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.Conversions
 * JD-Core Version:    0.7.0.1
 */