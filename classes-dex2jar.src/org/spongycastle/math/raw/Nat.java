package org.spongycastle.math.raw;

import java.math.BigInteger;
import org.spongycastle.util.Pack;

public abstract class Nat
{
  public static int[] ċ(int paramInt)
  {
    return new int[paramInt];
  }
  
  public static int ʻ(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    long l = (paramInt2 & 0xFFFFFFFF) + (paramArrayOfInt[0] & 0xFFFFFFFF);
    paramArrayOfInt[0] = ((int)l);
    if (l >>> 32 == 0L) {
      return 0;
    }
    return ˎ(paramInt1, paramArrayOfInt, 1);
  }
  
  public static int ʻ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int[] paramArrayOfInt2, int paramInt3)
  {
    long l = 0L;
    int i = 0;
    while (i < paramInt1)
    {
      l += (paramArrayOfInt2[(paramInt3 + i)] & 0xFFFFFFFF) - (paramArrayOfInt1[(paramInt2 + i)] & 0xFFFFFFFF);
      paramArrayOfInt2[(paramInt3 + i)] = ((int)l);
      l >>= 32;
      i += 1;
    }
    return (int)l;
  }
  
  public static int ʻ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = paramArrayOfInt1[i] + 1;
      paramArrayOfInt2[i] = j;
      i += 1;
      if (j != 0)
      {
        while (i < paramInt)
        {
          paramArrayOfInt2[i] = paramArrayOfInt1[i];
          i += 1;
        }
        return 0;
      }
    }
    return 1;
  }
  
  public static int ʻ(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt == 0) {
      return paramArrayOfInt[0] & 0x1;
    }
    int i = paramInt >> 5;
    if ((i < 0) || (i >= paramArrayOfInt.length)) {
      return 0;
    }
    return paramArrayOfInt[i] >>> (paramInt & 0x1F) & 0x1;
  }
  
  public static int ʼ(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    long l = (paramArrayOfInt[0] & 0xFFFFFFFF) - (paramInt2 & 0xFFFFFFFF);
    paramArrayOfInt[0] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt[1] & 0xFFFFFFFF) - 1L);
    paramArrayOfInt[1] = ((int)l);
    if (l >> 32 == 0L) {
      return 0;
    }
    return ˋ(paramInt1, paramArrayOfInt, 2);
  }
  
  public static int ʼ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l = 0L;
    int i = 0;
    while (i < paramInt)
    {
      l += (paramArrayOfInt2[i] & 0xFFFFFFFF) - (paramArrayOfInt1[i] & 0xFFFFFFFF);
      paramArrayOfInt2[i] = ((int)l);
      l >>= 32;
      i += 1;
    }
    return (int)l;
  }
  
  public static int ʾ(int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = paramArrayOfInt[i] + 1;
      paramArrayOfInt[i] = j;
      if (j != 0) {
        return 0;
      }
      i += 1;
    }
    return 1;
  }
  
  public static boolean ʿ(int paramInt, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt[0] != 1) {
      return false;
    }
    int i = 1;
    while (i < paramInt)
    {
      if (paramArrayOfInt[i] != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static boolean ˈ(int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (paramArrayOfInt[i] != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static BigInteger ˉ(int paramInt, int[] paramArrayOfInt)
  {
    byte[] arrayOfByte = new byte[paramInt << 2];
    int i = 0;
    while (i < paramInt)
    {
      int j = paramArrayOfInt[i];
      if (j != 0) {
        Pack.ʾ(j, arrayOfByte, paramInt - 1 - i << 2);
      }
      i += 1;
    }
    return new BigInteger(1, arrayOfByte);
  }
  
  public static int ˊ(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    long l = (paramInt2 & 0xFFFFFFFF) + (paramArrayOfInt[paramInt3] & 0xFFFFFFFF);
    paramArrayOfInt[paramInt3] = ((int)l);
    if (l >>> 32 == 0L) {
      return 0;
    }
    return ˎ(paramInt1, paramArrayOfInt, paramInt3 + 1);
  }
  
  public static int ˊ(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int paramInt3, int[] paramArrayOfInt2, int paramInt4)
  {
    long l1 = 0L;
    long l3 = paramInt2;
    paramInt2 = 0;
    long l2;
    int i;
    do
    {
      l1 += (paramArrayOfInt1[(paramInt3 + paramInt2)] & 0xFFFFFFFF) * (l3 & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt4 + paramInt2)] & 0xFFFFFFFF);
      paramArrayOfInt2[(paramInt4 + paramInt2)] = ((int)l1);
      l2 = l1 >>> 32;
      i = paramInt2 + 1;
      l1 = l2;
      paramInt2 = i;
    } while (i < paramInt1);
    return (int)l2;
  }
  
  public static int ˊ(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int paramInt3, int[] paramArrayOfInt2, int[] paramArrayOfInt3, int paramInt4)
  {
    long l1 = 0L;
    long l3 = paramInt2;
    long l4 = paramInt3;
    paramInt2 = 0;
    long l2;
    do
    {
      l1 += (paramArrayOfInt1[paramInt2] & 0xFFFFFFFF) * (l3 & 0xFFFFFFFF) + (paramArrayOfInt2[paramInt2] & 0xFFFFFFFF) * (l4 & 0xFFFFFFFF) + (paramArrayOfInt3[(paramInt4 + paramInt2)] & 0xFFFFFFFF);
      paramArrayOfInt3[(paramInt4 + paramInt2)] = ((int)l1);
      l2 = l1 >>> 32;
      paramInt3 = paramInt2 + 1;
      l1 = l2;
      paramInt2 = paramInt3;
    } while (paramInt3 < paramInt1);
    return (int)l2;
  }
  
  public static int ˊ(int paramInt1, int[] paramArrayOfInt, int paramInt2, int paramInt3)
  {
    while (paramInt3 < paramInt1)
    {
      int i = paramInt2 + paramInt3;
      int j = paramArrayOfInt[i] + 1;
      paramArrayOfInt[i] = j;
      if (j != 0) {
        return 0;
      }
      paramInt3 += 1;
    }
    return 1;
  }
  
  public static int ˊ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt2, int paramInt5)
  {
    for (;;)
    {
      paramInt1 -= 1;
      if (paramInt1 < 0) {
        break;
      }
      int i = paramArrayOfInt1[(paramInt2 + paramInt1)];
      paramArrayOfInt2[(paramInt5 + paramInt1)] = (i >>> paramInt3 | paramInt4 << -paramInt3);
      paramInt4 = i;
    }
    return paramInt4 << -paramInt3;
  }
  
  public static int ˊ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt2)
  {
    int j = 0;
    int i = paramInt3;
    paramInt3 = j;
    while (paramInt3 < paramInt1)
    {
      j = paramArrayOfInt1[paramInt3];
      paramArrayOfInt2[paramInt3] = (j << paramInt2 | i >>> -paramInt2);
      i = j;
      paramInt3 += 1;
    }
    return i >>> -paramInt2;
  }
  
  public static int ˊ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt2, int paramInt4)
  {
    int j = 0;
    int i = paramInt3;
    paramInt3 = j;
    while (paramInt3 < paramInt1)
    {
      j = paramArrayOfInt1[(paramInt2 + paramInt3)];
      paramArrayOfInt2[(paramInt4 + paramInt3)] = (j << 1 | i >>> 31);
      i = j;
      paramInt3 += 1;
    }
    return i >>> 31;
  }
  
  public static int ˊ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int[] paramArrayOfInt2)
  {
    int j = 0;
    int i = paramInt2;
    paramInt2 = j;
    while (paramInt2 < paramInt1)
    {
      j = paramArrayOfInt1[paramInt2];
      paramArrayOfInt2[paramInt2] = (j << 1 | i >>> 31);
      i = j;
      paramInt2 += 1;
    }
    return i >>> 31;
  }
  
  public static int ˊ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    long l = 0L;
    int i = 0;
    while (i < paramInt)
    {
      l += (paramArrayOfInt1[i] & 0xFFFFFFFF) + (paramArrayOfInt2[i] & 0xFFFFFFFF);
      paramArrayOfInt3[i] = ((int)l);
      l >>>= 32;
      i += 1;
    }
    return (int)l;
  }
  
  public static int ˋ(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    while (paramInt2 < paramInt1)
    {
      int i = paramArrayOfInt[paramInt2] - 1;
      paramArrayOfInt[paramInt2] = i;
      if (i != -1) {
        return 0;
      }
      paramInt2 += 1;
    }
    return -1;
  }
  
  public static int ˋ(int paramInt1, int[] paramArrayOfInt, int paramInt2, int paramInt3)
  {
    for (;;)
    {
      paramInt1 -= 1;
      if (paramInt1 < 0) {
        break;
      }
      int i = paramArrayOfInt[paramInt1];
      paramArrayOfInt[paramInt1] = (i >>> paramInt2 | paramInt3 << -paramInt2);
      paramInt3 = i;
    }
    return paramInt3 << -paramInt2;
  }
  
  public static int ˋ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    long l = 0L;
    int i = 0;
    while (i < paramInt)
    {
      l += (paramArrayOfInt1[i] & 0xFFFFFFFF) + (paramArrayOfInt2[i] & 0xFFFFFFFF) + (paramArrayOfInt3[i] & 0xFFFFFFFF);
      paramArrayOfInt3[i] = ((int)l);
      l >>>= 32;
      i += 1;
    }
    return (int)l;
  }
  
  public static void ˌ(int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      paramArrayOfInt[i] = 0;
      i += 1;
    }
  }
  
  public static int ˎ(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    while (paramInt2 < paramInt1)
    {
      int i = paramArrayOfInt[paramInt2] + 1;
      paramArrayOfInt[paramInt2] = i;
      if (i != 0) {
        return 0;
      }
      paramInt2 += 1;
    }
    return 1;
  }
  
  public static int ˎ(int paramInt1, int[] paramArrayOfInt, int paramInt2, int paramInt3)
  {
    int j = 0;
    int i = paramInt3;
    paramInt3 = j;
    while (paramInt3 < paramInt1)
    {
      j = paramArrayOfInt[paramInt3];
      paramArrayOfInt[paramInt3] = (j << paramInt2 | i >>> -paramInt2);
      i = j;
      paramInt3 += 1;
    }
    return i >>> -paramInt2;
  }
  
  public static int ˎ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l = 0L;
    int i = 0;
    while (i < paramInt)
    {
      l += (paramArrayOfInt1[i] & 0xFFFFFFFF) + (paramArrayOfInt2[i] & 0xFFFFFFFF);
      paramArrayOfInt2[i] = ((int)l);
      l >>>= 32;
      i += 1;
    }
    return (int)l;
  }
  
  public static int ˎ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    long l = 0L;
    int i = 0;
    while (i < paramInt)
    {
      l += (paramArrayOfInt1[i] & 0xFFFFFFFF) - (paramArrayOfInt2[i] & 0xFFFFFFFF);
      paramArrayOfInt3[i] = ((int)l);
      l >>= 32;
      i += 1;
    }
    return (int)l;
  }
  
  public static int ˏ(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    for (;;)
    {
      paramInt1 -= 1;
      if (paramInt1 < 0) {
        break;
      }
      int i = paramArrayOfInt[paramInt1];
      paramArrayOfInt[paramInt1] = (i >>> 1 | paramInt2 << 31);
      paramInt2 = i;
    }
    return paramInt2 << 31;
  }
  
  public static boolean ˏ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    paramInt -= 1;
    while (paramInt >= 0)
    {
      if (paramArrayOfInt1[paramInt] != paramArrayOfInt2[paramInt]) {
        return false;
      }
      paramInt -= 1;
    }
    return true;
  }
  
  public static int[] ͺ(int paramInt, int[] paramArrayOfInt)
  {
    int[] arrayOfInt = new int[paramInt];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, paramInt);
    return arrayOfInt;
  }
  
  public static int ᐝ(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    long l = (paramArrayOfInt[0] & 0xFFFFFFFF) + (paramInt2 & 0xFFFFFFFF);
    paramArrayOfInt[0] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt[1] & 0xFFFFFFFF) + 1L);
    paramArrayOfInt[1] = ((int)l);
    if (l >>> 32 == 0L) {
      return 0;
    }
    return ˎ(paramInt1, paramArrayOfInt, 2);
  }
  
  public static int ᐝ(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    for (;;)
    {
      paramInt1 -= 1;
      if (paramInt1 < 0) {
        break;
      }
      int i = paramArrayOfInt[paramInt1];
      paramArrayOfInt[paramInt1] = paramInt2;
      paramInt2 = i;
    }
    return paramInt2;
  }
  
  public static int ᐝ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int[] paramArrayOfInt2, int paramInt3)
  {
    long l = 0L;
    int i = 0;
    while (i < paramInt1)
    {
      l += (paramArrayOfInt1[(paramInt2 + i)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt3 + i)] & 0xFFFFFFFF);
      paramArrayOfInt2[(paramInt3 + i)] = ((int)l);
      l >>>= 32;
      i += 1;
    }
    return (int)l;
  }
  
  public static boolean ᐝ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    paramInt -= 1;
    while (paramInt >= 0)
    {
      int i = paramArrayOfInt1[paramInt] ^ 0x80000000;
      int j = paramArrayOfInt2[paramInt] ^ 0x80000000;
      if (i < j) {
        return false;
      }
      if (i > j) {
        return true;
      }
      paramInt -= 1;
    }
    return true;
  }
  
  public static int[] ᐝ(int paramInt, BigInteger paramBigInteger)
  {
    if ((paramBigInteger.signum() < 0) || (paramBigInteger.bitLength() > paramInt)) {
      throw new IllegalArgumentException();
    }
    int[] arrayOfInt = ċ(paramInt + 31 >> 5);
    int i;
    for (paramInt = 0; paramBigInteger.signum() != 0; paramInt = i)
    {
      i = paramInt + 1;
      arrayOfInt[paramInt] = paramBigInteger.intValue();
      paramBigInteger = paramBigInteger.shiftRight(32);
    }
    return arrayOfInt;
  }
  
  public static int ι(int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = paramArrayOfInt[i] - 1;
      paramArrayOfInt[i] = j;
      if (j != -1) {
        return 0;
      }
      i += 1;
    }
    return -1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.raw.Nat
 * JD-Core Version:    0.7.0.1
 */