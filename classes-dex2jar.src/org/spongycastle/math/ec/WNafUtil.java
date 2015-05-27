package org.spongycastle.math.ec;

import java.math.BigInteger;

public abstract class WNafUtil
{
  private static final byte[] abo = new byte[0];
  private static final int[] bdc = { 13, 41, 121, 337, 897, 2305 };
  private static final int[] ᔆ = new int[0];
  
  public static int ʻ(int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    while ((i < paramArrayOfInt.length) && (paramInt >= paramArrayOfInt[i])) {
      i += 1;
    }
    return i + 2;
  }
  
  public static WNafPreCompInfo ʾ(ECPoint paramECPoint)
  {
    return ˋ(paramECPoint.iv().ˊ(paramECPoint, "bc_wnaf"));
  }
  
  public static ECPoint ˊ(ECPoint paramECPoint, int paramInt, boolean paramBoolean, ECPointMap paramECPointMap)
  {
    ECCurve localECCurve = paramECPoint.iv();
    Object localObject1 = ˊ(paramECPoint, paramInt, paramBoolean);
    paramECPoint = paramECPointMap.ͺ(paramECPoint);
    WNafPreCompInfo localWNafPreCompInfo = ˋ(localECCurve.ˊ(paramECPoint, "bc_wnaf"));
    Object localObject2 = ((WNafPreCompInfo)localObject1).qh();
    if (localObject2 != null) {
      localWNafPreCompInfo.ι(paramECPointMap.ͺ((ECPoint)localObject2));
    }
    localObject2 = ((WNafPreCompInfo)localObject1).pY();
    localObject1 = new ECPoint[localObject2.length];
    paramInt = 0;
    while (paramInt < localObject2.length)
    {
      localObject1[paramInt] = paramECPointMap.ͺ(localObject2[paramInt]);
      paramInt += 1;
    }
    localWNafPreCompInfo.ˎ((ECPoint[])localObject1);
    if (paramBoolean)
    {
      paramECPointMap = new ECPoint[localObject1.length];
      paramInt = 0;
      while (paramInt < paramECPointMap.length)
      {
        paramECPointMap[paramInt] = localObject1[paramInt].pT();
        paramInt += 1;
      }
      localWNafPreCompInfo.ˏ(paramECPointMap);
    }
    localECCurve.ˊ(paramECPoint, "bc_wnaf", localWNafPreCompInfo);
    return paramECPoint;
  }
  
  public static WNafPreCompInfo ˊ(ECPoint paramECPoint, int paramInt, boolean paramBoolean)
  {
    ECCurve localECCurve = paramECPoint.iv();
    WNafPreCompInfo localWNafPreCompInfo = ˋ(localECCurve.ˊ(paramECPoint, "bc_wnaf"));
    Object localObject2 = localWNafPreCompInfo.pY();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new ECPoint[1];
      localObject1[0] = paramECPoint;
    }
    int i = localObject1.length;
    int j = 1 << Math.max(0, paramInt - 2);
    localObject2 = localObject1;
    Object localObject3;
    if (i < j)
    {
      localObject2 = ˊ((ECPoint[])localObject1, j);
      if (j == 2)
      {
        localObject2[1] = localObject2[0].pV();
      }
      else
      {
        localObject3 = localWNafPreCompInfo.qh();
        localObject1 = localObject3;
        if (localObject3 == null)
        {
          localObject1 = localObject2[0].pU();
          localWNafPreCompInfo.ι((ECPoint)localObject1);
        }
        paramInt = i;
        while (paramInt < j)
        {
          localObject2[paramInt] = ((ECPoint)localObject1).ʼ(localObject2[(paramInt - 1)]);
          paramInt += 1;
        }
      }
      localECCurve.ˊ((ECPoint[])localObject2);
    }
    localWNafPreCompInfo.ˎ((ECPoint[])localObject2);
    if (paramBoolean)
    {
      localObject3 = localWNafPreCompInfo.qg();
      if (localObject3 == null)
      {
        paramInt = 0;
        localObject1 = new ECPoint[j];
      }
      else
      {
        i = localObject3.length;
        localObject1 = localObject3;
        paramInt = i;
        if (i < j)
        {
          localObject1 = ˊ((ECPoint[])localObject3, j);
          paramInt = i;
        }
      }
      while (paramInt < j)
      {
        localObject1[paramInt] = localObject2[paramInt].pT();
        paramInt += 1;
      }
      localWNafPreCompInfo.ˏ((ECPoint[])localObject1);
    }
    localECCurve.ˊ(paramECPoint, "bc_wnaf", localWNafPreCompInfo);
    return localWNafPreCompInfo;
  }
  
  private static ECPoint[] ˊ(ECPoint[] paramArrayOfECPoint, int paramInt)
  {
    ECPoint[] arrayOfECPoint = new ECPoint[paramInt];
    System.arraycopy(paramArrayOfECPoint, 0, arrayOfECPoint, 0, paramArrayOfECPoint.length);
    return arrayOfECPoint;
  }
  
  public static WNafPreCompInfo ˋ(PreCompInfo paramPreCompInfo)
  {
    if ((paramPreCompInfo != null) && ((paramPreCompInfo instanceof WNafPreCompInfo))) {
      return (WNafPreCompInfo)paramPreCompInfo;
    }
    return new WNafPreCompInfo();
  }
  
  public static int[] ˎ(int paramInt, BigInteger paramBigInteger)
  {
    if (paramInt == 2) {
      return ـ(paramBigInteger);
    }
    if ((paramInt < 2) || (paramInt > 16)) {
      throw new IllegalArgumentException("'width' must be in the range [2, 16]");
    }
    if (paramBigInteger.bitLength() >>> 16 != 0) {
      throw new IllegalArgumentException("'k' must have bitlength < 2^16");
    }
    if (paramBigInteger.signum() == 0) {
      return ᔆ;
    }
    int[] arrayOfInt = new int[paramBigInteger.bitLength() / paramInt + 1];
    int n = 1 << paramInt;
    int i1 = 0;
    int j = 0;
    int i = 0;
    int m;
    for (;;)
    {
      m = j;
      if (i > paramBigInteger.bitLength()) {
        break;
      }
      if (paramBigInteger.testBit(i) == i1)
      {
        i += 1;
        j = m;
      }
      else
      {
        paramBigInteger = paramBigInteger.shiftRight(i);
        int k = paramBigInteger.intValue() & n - 1;
        j = k;
        if (i1 != 0) {
          j = k + 1;
        }
        if ((j & n >>> 1) != 0) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        k = j;
        if (i1 != 0) {
          k = j - n;
        }
        if (m > 0) {
          i -= 1;
        }
        j = m + 1;
        arrayOfInt[m] = (k << 16 | i);
        i = paramInt;
      }
    }
    paramBigInteger = arrayOfInt;
    if (arrayOfInt.length > m) {
      paramBigInteger = ᐝ(arrayOfInt, m);
    }
    return paramBigInteger;
  }
  
  public static byte[] ˏ(int paramInt, BigInteger paramBigInteger)
  {
    if (paramInt == 2) {
      return ᐧ(paramBigInteger);
    }
    if ((paramInt < 2) || (paramInt > 8)) {
      throw new IllegalArgumentException("'width' must be in the range [2, 8]");
    }
    if (paramBigInteger.signum() == 0) {
      return abo;
    }
    byte[] arrayOfByte = new byte[paramBigInteger.bitLength() + 1];
    int n = 1 << paramInt;
    int i1 = 0;
    int k = 0;
    int i = 0;
    while (i <= paramBigInteger.bitLength()) {
      if (paramBigInteger.testBit(i) == i1)
      {
        i += 1;
      }
      else
      {
        paramBigInteger = paramBigInteger.shiftRight(i);
        int m = paramBigInteger.intValue() & n - 1;
        int j = m;
        if (i1 != 0) {
          j = m + 1;
        }
        if ((j & n >>> 1) != 0) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        m = j;
        if (i1 != 0) {
          m = j - n;
        }
        if (k > 0) {
          i -= 1;
        }
        i = k + i;
        k = i + 1;
        arrayOfByte[i] = ((byte)m);
        i = paramInt;
      }
    }
    paramBigInteger = arrayOfByte;
    if (arrayOfByte.length > k) {
      paramBigInteger = ˮ(arrayOfByte, k);
    }
    return paramBigInteger;
  }
  
  private static byte[] ˮ(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public static int[] ـ(BigInteger paramBigInteger)
  {
    if (paramBigInteger.bitLength() >>> 16 != 0) {
      throw new IllegalArgumentException("'k' must have bitlength < 2^16");
    }
    if (paramBigInteger.signum() == 0) {
      return ᔆ;
    }
    BigInteger localBigInteger = paramBigInteger.shiftLeft(1).add(paramBigInteger);
    int i1 = localBigInteger.bitLength();
    int[] arrayOfInt = new int[i1 >> 1];
    localBigInteger = localBigInteger.xor(paramBigInteger);
    int k = 0;
    int j = 0;
    int i = 1;
    while (i < i1 - 1)
    {
      if (!localBigInteger.testBit(i))
      {
        j += 1;
      }
      else
      {
        int m;
        if (paramBigInteger.testBit(i)) {
          m = -1;
        } else {
          m = 1;
        }
        int n = k + 1;
        arrayOfInt[k] = (m << 16 | j);
        j = 1;
        i += 1;
        k = n;
      }
      i += 1;
    }
    i = k + 1;
    arrayOfInt[k] = (0x10000 | j);
    paramBigInteger = arrayOfInt;
    if (arrayOfInt.length > i) {
      paramBigInteger = ᐝ(arrayOfInt, i);
    }
    return paramBigInteger;
  }
  
  private static int[] ᐝ(int[] paramArrayOfInt, int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, arrayOfInt.length);
    return arrayOfInt;
  }
  
  public static byte[] ᐧ(BigInteger paramBigInteger)
  {
    if (paramBigInteger.signum() == 0) {
      return abo;
    }
    BigInteger localBigInteger = paramBigInteger.shiftLeft(1).add(paramBigInteger);
    int k = localBigInteger.bitLength() - 1;
    byte[] arrayOfByte = new byte[k];
    localBigInteger = localBigInteger.xor(paramBigInteger);
    int j;
    for (int i = 1; i < k; i = j + 1)
    {
      j = i;
      if (localBigInteger.testBit(i))
      {
        if (paramBigInteger.testBit(i)) {
          j = -1;
        } else {
          j = 1;
        }
        arrayOfByte[(i - 1)] = ((byte)j);
        j = i + 1;
      }
    }
    arrayOfByte[(k - 1)] = 1;
    return arrayOfByte;
  }
  
  public static int ᐨ(BigInteger paramBigInteger)
  {
    if (paramBigInteger.signum() == 0) {
      return 0;
    }
    return paramBigInteger.shiftLeft(1).add(paramBigInteger).xor(paramBigInteger).bitCount();
  }
  
  public static int ﾌ(int paramInt)
  {
    return ʻ(paramInt, bdc);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.WNafUtil
 * JD-Core Version:    0.7.0.1
 */