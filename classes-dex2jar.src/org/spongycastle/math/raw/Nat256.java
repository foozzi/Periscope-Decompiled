package org.spongycastle.math.raw;

import java.math.BigInteger;
import org.spongycastle.util.Pack;

public abstract class Nat256
{
  public static int[] qv()
  {
    return new int[8];
  }
  
  public static int[] qw()
  {
    return new int[16];
  }
  
  public static void ʹ(int[] paramArrayOfInt)
  {
    paramArrayOfInt[0] = 0;
    paramArrayOfInt[1] = 0;
    paramArrayOfInt[2] = 0;
    paramArrayOfInt[3] = 0;
    paramArrayOfInt[4] = 0;
    paramArrayOfInt[5] = 0;
    paramArrayOfInt[6] = 0;
    paramArrayOfInt[7] = 0;
  }
  
  public static int ʻ(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt == 0) {
      return paramArrayOfInt[0] & 0x1;
    }
    if ((paramInt & 0xFF) != paramInt) {
      return 0;
    }
    return paramArrayOfInt[(paramInt >>> 5)] >>> (paramInt & 0x1F) & 0x1;
  }
  
  public static int ʽ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l1 = paramInt & 0xFFFFFFFF;
    long l2 = 0L + ((paramArrayOfInt2[0] & 0xFFFFFFFF) * l1 + (paramArrayOfInt1[0] & 0xFFFFFFFF));
    paramArrayOfInt2[0] = ((int)l2);
    l2 = (l2 >>> 32) + ((paramArrayOfInt2[1] & 0xFFFFFFFF) * l1 + (paramArrayOfInt1[1] & 0xFFFFFFFF));
    paramArrayOfInt2[1] = ((int)l2);
    l2 = (l2 >>> 32) + ((paramArrayOfInt2[2] & 0xFFFFFFFF) * l1 + (paramArrayOfInt1[2] & 0xFFFFFFFF));
    paramArrayOfInt2[2] = ((int)l2);
    l2 = (l2 >>> 32) + ((paramArrayOfInt2[3] & 0xFFFFFFFF) * l1 + (paramArrayOfInt1[3] & 0xFFFFFFFF));
    paramArrayOfInt2[3] = ((int)l2);
    l2 = (l2 >>> 32) + ((paramArrayOfInt2[4] & 0xFFFFFFFF) * l1 + (paramArrayOfInt1[4] & 0xFFFFFFFF));
    paramArrayOfInt2[4] = ((int)l2);
    l2 = (l2 >>> 32) + ((paramArrayOfInt2[5] & 0xFFFFFFFF) * l1 + (paramArrayOfInt1[5] & 0xFFFFFFFF));
    paramArrayOfInt2[5] = ((int)l2);
    l2 = (l2 >>> 32) + ((paramArrayOfInt2[6] & 0xFFFFFFFF) * l1 + (paramArrayOfInt1[6] & 0xFFFFFFFF));
    paramArrayOfInt2[6] = ((int)l2);
    l1 = (l2 >>> 32) + ((paramArrayOfInt2[7] & 0xFFFFFFFF) * l1 + (paramArrayOfInt1[7] & 0xFFFFFFFF));
    paramArrayOfInt2[7] = ((int)l1);
    return (int)(l1 >>> 32);
  }
  
  public static int ʾ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    long l = 0L + ((paramArrayOfInt1[0] & 0xFFFFFFFF) + (paramArrayOfInt2[0] & 0xFFFFFFFF) + (paramArrayOfInt3[0] & 0xFFFFFFFF));
    paramArrayOfInt3[0] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[1] & 0xFFFFFFFF) + (paramArrayOfInt2[1] & 0xFFFFFFFF) + (paramArrayOfInt3[1] & 0xFFFFFFFF));
    paramArrayOfInt3[1] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[2] & 0xFFFFFFFF) + (paramArrayOfInt2[2] & 0xFFFFFFFF) + (paramArrayOfInt3[2] & 0xFFFFFFFF));
    paramArrayOfInt3[2] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[3] & 0xFFFFFFFF) + (paramArrayOfInt2[3] & 0xFFFFFFFF) + (paramArrayOfInt3[3] & 0xFFFFFFFF));
    paramArrayOfInt3[3] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[4] & 0xFFFFFFFF) + (paramArrayOfInt2[4] & 0xFFFFFFFF) + (paramArrayOfInt3[4] & 0xFFFFFFFF));
    paramArrayOfInt3[4] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[5] & 0xFFFFFFFF) + (paramArrayOfInt2[5] & 0xFFFFFFFF) + (paramArrayOfInt3[5] & 0xFFFFFFFF));
    paramArrayOfInt3[5] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[6] & 0xFFFFFFFF) + (paramArrayOfInt2[6] & 0xFFFFFFFF) + (paramArrayOfInt3[6] & 0xFFFFFFFF));
    paramArrayOfInt3[6] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[7] & 0xFFFFFFFF) + (paramArrayOfInt2[7] & 0xFFFFFFFF) + (paramArrayOfInt3[7] & 0xFFFFFFFF));
    paramArrayOfInt3[7] = ((int)l);
    return (int)(l >>> 32);
  }
  
  public static void ʿ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    long l1 = paramArrayOfInt2[0] & 0xFFFFFFFF;
    long l2 = paramArrayOfInt2[1] & 0xFFFFFFFF;
    long l3 = paramArrayOfInt2[2] & 0xFFFFFFFF;
    long l4 = paramArrayOfInt2[3] & 0xFFFFFFFF;
    long l5 = paramArrayOfInt2[4] & 0xFFFFFFFF;
    long l6 = paramArrayOfInt2[5] & 0xFFFFFFFF;
    long l7 = paramArrayOfInt2[6] & 0xFFFFFFFF;
    long l8 = paramArrayOfInt2[7] & 0xFFFFFFFF;
    long l9 = paramArrayOfInt1[0] & 0xFFFFFFFF;
    long l10 = 0L + l9 * l1;
    paramArrayOfInt3[0] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l2;
    paramArrayOfInt3[1] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l3;
    paramArrayOfInt3[2] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l4;
    paramArrayOfInt3[3] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l5;
    paramArrayOfInt3[4] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l6;
    paramArrayOfInt3[5] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l7;
    paramArrayOfInt3[6] = ((int)l10);
    l9 = (l10 >>> 32) + l9 * l8;
    paramArrayOfInt3[7] = ((int)l9);
    paramArrayOfInt3[8] = ((int)(l9 >>> 32));
    int i = 1;
    while (i < 8)
    {
      l9 = paramArrayOfInt1[i] & 0xFFFFFFFF;
      l10 = 0L + (l9 * l1 + (paramArrayOfInt3[(i + 0)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 0)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l2 + (paramArrayOfInt3[(i + 1)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 1)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l3 + (paramArrayOfInt3[(i + 2)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 2)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l4 + (paramArrayOfInt3[(i + 3)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 3)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l5 + (paramArrayOfInt3[(i + 4)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 4)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l6 + (paramArrayOfInt3[(i + 5)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 5)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l7 + (paramArrayOfInt3[(i + 6)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 6)] = ((int)l10);
      l9 = (l10 >>> 32) + (l9 * l8 + (paramArrayOfInt3[(i + 7)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 7)] = ((int)l9);
      paramArrayOfInt3[(i + 8)] = ((int)(l9 >>> 32));
      i += 1;
    }
  }
  
  public static int ˈ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    long l2 = paramArrayOfInt2[0];
    long l3 = paramArrayOfInt2[1];
    long l4 = paramArrayOfInt2[2];
    long l5 = paramArrayOfInt2[3];
    long l6 = paramArrayOfInt2[4];
    long l7 = paramArrayOfInt2[5];
    long l8 = paramArrayOfInt2[6];
    long l9 = paramArrayOfInt2[7];
    long l1 = 0L;
    int i = 0;
    while (i < 8)
    {
      long l10 = paramArrayOfInt1[i] & 0xFFFFFFFF;
      long l11 = 0L + (l10 * (l2 & 0xFFFFFFFF) + (paramArrayOfInt3[(i + 0)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 0)] = ((int)l11);
      l11 = (l11 >>> 32) + (l10 * (l3 & 0xFFFFFFFF) + (paramArrayOfInt3[(i + 1)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 1)] = ((int)l11);
      l11 = (l11 >>> 32) + (l10 * (l4 & 0xFFFFFFFF) + (paramArrayOfInt3[(i + 2)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 2)] = ((int)l11);
      l11 = (l11 >>> 32) + (l10 * (l5 & 0xFFFFFFFF) + (paramArrayOfInt3[(i + 3)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 3)] = ((int)l11);
      l11 = (l11 >>> 32) + (l10 * (l6 & 0xFFFFFFFF) + (paramArrayOfInt3[(i + 4)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 4)] = ((int)l11);
      l11 = (l11 >>> 32) + (l10 * (l7 & 0xFFFFFFFF) + (paramArrayOfInt3[(i + 5)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 5)] = ((int)l11);
      l11 = (l11 >>> 32) + (l10 * (l8 & 0xFFFFFFFF) + (paramArrayOfInt3[(i + 6)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 6)] = ((int)l11);
      l10 = (l11 >>> 32) + (l10 * (l9 & 0xFFFFFFFF) + (paramArrayOfInt3[(i + 7)] & 0xFFFFFFFF));
      paramArrayOfInt3[(i + 7)] = ((int)l10);
      l1 = (l10 >>> 32) + ((paramArrayOfInt3[(i + 8)] & 0xFFFFFFFF) + l1);
      paramArrayOfInt3[(i + 8)] = ((int)l1);
      l1 >>>= 32;
      i += 1;
    }
    return (int)l1;
  }
  
  public static boolean ˈ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = 7;
    while (i >= 0)
    {
      if (paramArrayOfInt1[i] != paramArrayOfInt2[i]) {
        return false;
      }
      i -= 1;
    }
    return true;
  }
  
  public static int ˉ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    long l = 0L + ((paramArrayOfInt1[0] & 0xFFFFFFFF) - (paramArrayOfInt2[0] & 0xFFFFFFFF));
    paramArrayOfInt3[0] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[1] & 0xFFFFFFFF) - (paramArrayOfInt2[1] & 0xFFFFFFFF));
    paramArrayOfInt3[1] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[2] & 0xFFFFFFFF) - (paramArrayOfInt2[2] & 0xFFFFFFFF));
    paramArrayOfInt3[2] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[3] & 0xFFFFFFFF) - (paramArrayOfInt2[3] & 0xFFFFFFFF));
    paramArrayOfInt3[3] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[4] & 0xFFFFFFFF) - (paramArrayOfInt2[4] & 0xFFFFFFFF));
    paramArrayOfInt3[4] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[5] & 0xFFFFFFFF) - (paramArrayOfInt2[5] & 0xFFFFFFFF));
    paramArrayOfInt3[5] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[6] & 0xFFFFFFFF) - (paramArrayOfInt2[6] & 0xFFFFFFFF));
    paramArrayOfInt3[6] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[7] & 0xFFFFFFFF) - (paramArrayOfInt2[7] & 0xFFFFFFFF));
    paramArrayOfInt3[7] = ((int)l);
    return (int)(l >> 32);
  }
  
  public static boolean ˉ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = 7;
    while (i >= 0)
    {
      int j = paramArrayOfInt1[i] ^ 0x80000000;
      int k = paramArrayOfInt2[i] ^ 0x80000000;
      if (j < k) {
        return false;
      }
      if (j > k) {
        return true;
      }
      i -= 1;
    }
    return true;
  }
  
  public static int ˊ(int paramInt1, long paramLong, int[] paramArrayOfInt, int paramInt2)
  {
    long l1 = paramInt1 & 0xFFFFFFFF;
    long l2 = paramLong & 0xFFFFFFFF;
    long l3 = 0L + (l1 * l2 + (paramArrayOfInt[(paramInt2 + 0)] & 0xFFFFFFFF));
    paramArrayOfInt[(paramInt2 + 0)] = ((int)l3);
    paramLong >>>= 32;
    l1 = (l3 >>> 32) + (l1 * paramLong + l2 + (paramArrayOfInt[(paramInt2 + 1)] & 0xFFFFFFFF));
    paramArrayOfInt[(paramInt2 + 1)] = ((int)l1);
    paramLong = (l1 >>> 32) + ((paramArrayOfInt[(paramInt2 + 2)] & 0xFFFFFFFF) + paramLong);
    paramArrayOfInt[(paramInt2 + 2)] = ((int)paramLong);
    paramLong = (paramLong >>> 32) + (paramArrayOfInt[(paramInt2 + 3)] & 0xFFFFFFFF);
    paramArrayOfInt[(paramInt2 + 3)] = ((int)paramLong);
    if (paramLong >>> 32 == 0L) {
      return 0;
    }
    return Nat.ˊ(8, paramArrayOfInt, paramInt2, 4);
  }
  
  public static int ˊ(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2)
  {
    long l = 0L + ((paramArrayOfInt1[(paramInt1 + 0)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 0)] & 0xFFFFFFFF));
    paramArrayOfInt1[(paramInt1 + 0)] = ((int)l);
    paramArrayOfInt2[(paramInt2 + 0)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 1)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 1)] & 0xFFFFFFFF));
    paramArrayOfInt1[(paramInt1 + 1)] = ((int)l);
    paramArrayOfInt2[(paramInt2 + 1)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 2)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 2)] & 0xFFFFFFFF));
    paramArrayOfInt1[(paramInt1 + 2)] = ((int)l);
    paramArrayOfInt2[(paramInt2 + 2)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 3)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 3)] & 0xFFFFFFFF));
    paramArrayOfInt1[(paramInt1 + 3)] = ((int)l);
    paramArrayOfInt2[(paramInt2 + 3)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 4)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 4)] & 0xFFFFFFFF));
    paramArrayOfInt1[(paramInt1 + 4)] = ((int)l);
    paramArrayOfInt2[(paramInt2 + 4)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 5)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 5)] & 0xFFFFFFFF));
    paramArrayOfInt1[(paramInt1 + 5)] = ((int)l);
    paramArrayOfInt2[(paramInt2 + 5)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 6)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 6)] & 0xFFFFFFFF));
    paramArrayOfInt1[(paramInt1 + 6)] = ((int)l);
    paramArrayOfInt2[(paramInt2 + 6)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 7)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 7)] & 0xFFFFFFFF));
    paramArrayOfInt1[(paramInt1 + 7)] = ((int)l);
    paramArrayOfInt2[(paramInt2 + 7)] = ((int)l);
    return (int)(l >>> 32);
  }
  
  public static int ˊ(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2, int paramInt3)
  {
    long l = (paramInt3 & 0xFFFFFFFF) + ((paramArrayOfInt1[(paramInt1 + 0)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 0)] & 0xFFFFFFFF));
    paramArrayOfInt2[(paramInt2 + 0)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 1)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 1)] & 0xFFFFFFFF));
    paramArrayOfInt2[(paramInt2 + 1)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 2)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 2)] & 0xFFFFFFFF));
    paramArrayOfInt2[(paramInt2 + 2)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 3)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 3)] & 0xFFFFFFFF));
    paramArrayOfInt2[(paramInt2 + 3)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 4)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 4)] & 0xFFFFFFFF));
    paramArrayOfInt2[(paramInt2 + 4)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 5)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 5)] & 0xFFFFFFFF));
    paramArrayOfInt2[(paramInt2 + 5)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 6)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 6)] & 0xFFFFFFFF));
    paramArrayOfInt2[(paramInt2 + 6)] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[(paramInt1 + 7)] & 0xFFFFFFFF) + (paramArrayOfInt2[(paramInt2 + 7)] & 0xFFFFFFFF));
    paramArrayOfInt2[(paramInt2 + 7)] = ((int)l);
    return (int)(l >>> 32);
  }
  
  public static long ˊ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int[] paramArrayOfInt2, int paramInt3, int[] paramArrayOfInt3, int paramInt4)
  {
    long l1 = paramInt1 & 0xFFFFFFFF;
    long l3 = paramArrayOfInt1[(paramInt2 + 0)] & 0xFFFFFFFF;
    long l4 = 0L + (l1 * l3 + (paramArrayOfInt2[(paramInt3 + 0)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt4 + 0)] = ((int)l4);
    long l2 = paramArrayOfInt1[(paramInt2 + 1)] & 0xFFFFFFFF;
    l4 = (l4 >>> 32) + (l1 * l2 + l3 + (paramArrayOfInt2[(paramInt3 + 1)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt4 + 1)] = ((int)l4);
    l3 = paramArrayOfInt1[(paramInt2 + 2)] & 0xFFFFFFFF;
    l4 = (l4 >>> 32) + (l1 * l3 + l2 + (paramArrayOfInt2[(paramInt3 + 2)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt4 + 2)] = ((int)l4);
    l2 = paramArrayOfInt1[(paramInt2 + 3)] & 0xFFFFFFFF;
    l4 = (l4 >>> 32) + (l1 * l2 + l3 + (paramArrayOfInt2[(paramInt3 + 3)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt4 + 3)] = ((int)l4);
    l3 = paramArrayOfInt1[(paramInt2 + 4)] & 0xFFFFFFFF;
    l4 = (l4 >>> 32) + (l1 * l3 + l2 + (paramArrayOfInt2[(paramInt3 + 4)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt4 + 4)] = ((int)l4);
    l2 = paramArrayOfInt1[(paramInt2 + 5)] & 0xFFFFFFFF;
    l4 = (l4 >>> 32) + (l1 * l2 + l3 + (paramArrayOfInt2[(paramInt3 + 5)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt4 + 5)] = ((int)l4);
    l3 = paramArrayOfInt1[(paramInt2 + 6)] & 0xFFFFFFFF;
    l4 = (l4 >>> 32) + (l1 * l3 + l2 + (paramArrayOfInt2[(paramInt3 + 6)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt4 + 6)] = ((int)l4);
    l2 = paramArrayOfInt1[(paramInt2 + 7)] & 0xFFFFFFFF;
    l1 = (l4 >>> 32) + (l1 * l2 + l3 + (paramArrayOfInt2[(paramInt3 + 7)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt4 + 7)] = ((int)l1);
    return (l1 >>> 32) + l2;
  }
  
  public static boolean ˊ(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2, int[] paramArrayOfInt3, int paramInt3)
  {
    boolean bool = ˋ(paramArrayOfInt1, paramInt1, paramArrayOfInt2, paramInt2);
    if (bool)
    {
      ˎ(paramArrayOfInt1, paramInt1, paramArrayOfInt2, paramInt2, paramArrayOfInt3, paramInt3);
      return bool;
    }
    ˎ(paramArrayOfInt2, paramInt2, paramArrayOfInt1, paramInt1, paramArrayOfInt3, paramInt3);
    return bool;
  }
  
  public static int ˋ(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    long l2 = paramInt1;
    long l1 = paramInt2 & 0xFFFFFFFF;
    l2 = 0L + (l1 * (l2 & 0xFFFFFFFF) + (paramArrayOfInt[(paramInt3 + 0)] & 0xFFFFFFFF));
    paramArrayOfInt[(paramInt3 + 0)] = ((int)l2);
    l1 = (l2 >>> 32) + ((paramArrayOfInt[(paramInt3 + 1)] & 0xFFFFFFFF) + l1);
    paramArrayOfInt[(paramInt3 + 1)] = ((int)l1);
    l1 = (l1 >>> 32) + (paramArrayOfInt[(paramInt3 + 2)] & 0xFFFFFFFF);
    paramArrayOfInt[(paramInt3 + 2)] = ((int)l1);
    if (l1 >>> 32 == 0L) {
      return 0;
    }
    return Nat.ˊ(8, paramArrayOfInt, paramInt3, 3);
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2, int[] paramArrayOfInt3, int paramInt3)
  {
    long l1 = paramArrayOfInt2[(paramInt2 + 0)] & 0xFFFFFFFF;
    long l2 = paramArrayOfInt2[(paramInt2 + 1)] & 0xFFFFFFFF;
    long l3 = paramArrayOfInt2[(paramInt2 + 2)] & 0xFFFFFFFF;
    long l4 = paramArrayOfInt2[(paramInt2 + 3)] & 0xFFFFFFFF;
    long l5 = paramArrayOfInt2[(paramInt2 + 4)] & 0xFFFFFFFF;
    long l6 = paramArrayOfInt2[(paramInt2 + 5)] & 0xFFFFFFFF;
    long l7 = paramArrayOfInt2[(paramInt2 + 6)] & 0xFFFFFFFF;
    long l8 = paramArrayOfInt2[(paramInt2 + 7)] & 0xFFFFFFFF;
    long l9 = paramArrayOfInt1[(paramInt1 + 0)] & 0xFFFFFFFF;
    long l10 = 0L + l9 * l1;
    paramArrayOfInt3[(paramInt3 + 0)] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l2;
    paramArrayOfInt3[(paramInt3 + 1)] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l3;
    paramArrayOfInt3[(paramInt3 + 2)] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l4;
    paramArrayOfInt3[(paramInt3 + 3)] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l5;
    paramArrayOfInt3[(paramInt3 + 4)] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l6;
    paramArrayOfInt3[(paramInt3 + 5)] = ((int)l10);
    l10 = (l10 >>> 32) + l9 * l7;
    paramArrayOfInt3[(paramInt3 + 6)] = ((int)l10);
    l9 = (l10 >>> 32) + l9 * l8;
    paramArrayOfInt3[(paramInt3 + 7)] = ((int)l9);
    paramArrayOfInt3[(paramInt3 + 8)] = ((int)(l9 >>> 32));
    paramInt2 = 1;
    while (paramInt2 < 8)
    {
      paramInt3 += 1;
      l9 = paramArrayOfInt1[(paramInt1 + paramInt2)] & 0xFFFFFFFF;
      l10 = 0L + (l9 * l1 + (paramArrayOfInt3[(paramInt3 + 0)] & 0xFFFFFFFF));
      paramArrayOfInt3[(paramInt3 + 0)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l2 + (paramArrayOfInt3[(paramInt3 + 1)] & 0xFFFFFFFF));
      paramArrayOfInt3[(paramInt3 + 1)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l3 + (paramArrayOfInt3[(paramInt3 + 2)] & 0xFFFFFFFF));
      paramArrayOfInt3[(paramInt3 + 2)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l4 + (paramArrayOfInt3[(paramInt3 + 3)] & 0xFFFFFFFF));
      paramArrayOfInt3[(paramInt3 + 3)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l5 + (paramArrayOfInt3[(paramInt3 + 4)] & 0xFFFFFFFF));
      paramArrayOfInt3[(paramInt3 + 4)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l6 + (paramArrayOfInt3[(paramInt3 + 5)] & 0xFFFFFFFF));
      paramArrayOfInt3[(paramInt3 + 5)] = ((int)l10);
      l10 = (l10 >>> 32) + (l9 * l7 + (paramArrayOfInt3[(paramInt3 + 6)] & 0xFFFFFFFF));
      paramArrayOfInt3[(paramInt3 + 6)] = ((int)l10);
      l9 = (l10 >>> 32) + (l9 * l8 + (paramArrayOfInt3[(paramInt3 + 7)] & 0xFFFFFFFF));
      paramArrayOfInt3[(paramInt3 + 7)] = ((int)l9);
      paramArrayOfInt3[(paramInt3 + 8)] = ((int)(l9 >>> 32));
      paramInt2 += 1;
    }
  }
  
  public static boolean ˋ(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2)
  {
    int i = 7;
    while (i >= 0)
    {
      int j = paramArrayOfInt1[(paramInt1 + i)] ^ 0x80000000;
      int k = paramArrayOfInt2[(paramInt2 + i)] ^ 0x80000000;
      if (j < k) {
        return false;
      }
      if (j > k) {
        return true;
      }
      i -= 1;
    }
    return true;
  }
  
  public static int ˌ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l = 0L + ((paramArrayOfInt2[0] & 0xFFFFFFFF) - (paramArrayOfInt1[0] & 0xFFFFFFFF));
    paramArrayOfInt2[0] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt2[1] & 0xFFFFFFFF) - (paramArrayOfInt1[1] & 0xFFFFFFFF));
    paramArrayOfInt2[1] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt2[2] & 0xFFFFFFFF) - (paramArrayOfInt1[2] & 0xFFFFFFFF));
    paramArrayOfInt2[2] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt2[3] & 0xFFFFFFFF) - (paramArrayOfInt1[3] & 0xFFFFFFFF));
    paramArrayOfInt2[3] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt2[4] & 0xFFFFFFFF) - (paramArrayOfInt1[4] & 0xFFFFFFFF));
    paramArrayOfInt2[4] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt2[5] & 0xFFFFFFFF) - (paramArrayOfInt1[5] & 0xFFFFFFFF));
    paramArrayOfInt2[5] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt2[6] & 0xFFFFFFFF) - (paramArrayOfInt1[6] & 0xFFFFFFFF));
    paramArrayOfInt2[6] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt2[7] & 0xFFFFFFFF) - (paramArrayOfInt1[7] & 0xFFFFFFFF));
    paramArrayOfInt2[7] = ((int)l);
    return (int)(l >> 32);
  }
  
  public static int ˎ(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2, int[] paramArrayOfInt3, int paramInt3)
  {
    long l = 0L + ((paramArrayOfInt1[(paramInt1 + 0)] & 0xFFFFFFFF) - (paramArrayOfInt2[(paramInt2 + 0)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt3 + 0)] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[(paramInt1 + 1)] & 0xFFFFFFFF) - (paramArrayOfInt2[(paramInt2 + 1)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt3 + 1)] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[(paramInt1 + 2)] & 0xFFFFFFFF) - (paramArrayOfInt2[(paramInt2 + 2)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt3 + 2)] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[(paramInt1 + 3)] & 0xFFFFFFFF) - (paramArrayOfInt2[(paramInt2 + 3)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt3 + 3)] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[(paramInt1 + 4)] & 0xFFFFFFFF) - (paramArrayOfInt2[(paramInt2 + 4)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt3 + 4)] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[(paramInt1 + 5)] & 0xFFFFFFFF) - (paramArrayOfInt2[(paramInt2 + 5)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt3 + 5)] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[(paramInt1 + 6)] & 0xFFFFFFFF) - (paramArrayOfInt2[(paramInt2 + 6)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt3 + 6)] = ((int)l);
    l = (l >> 32) + ((paramArrayOfInt1[(paramInt1 + 7)] & 0xFFFFFFFF) - (paramArrayOfInt2[(paramInt2 + 7)] & 0xFFFFFFFF));
    paramArrayOfInt3[(paramInt3 + 7)] = ((int)l);
    return (int)(l >> 32);
  }
  
  public static void ˎ(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2)
  {
    long l1 = paramArrayOfInt1[(paramInt1 + 0)] & 0xFFFFFFFF;
    int j = 0;
    int i = 7;
    int k = 16;
    int m;
    int n;
    do
    {
      m = i - 1;
      l2 = paramArrayOfInt1[(i + paramInt1)] & 0xFFFFFFFF;
      l2 *= l2;
      i = k - 1;
      paramArrayOfInt2[(paramInt2 + i)] = (j << 31 | (int)(l2 >>> 33));
      k = i - 1;
      paramArrayOfInt2[(paramInt2 + k)] = ((int)(l2 >>> 1));
      n = (int)l2;
      j = n;
      i = m;
    } while (m > 0);
    long l3 = l1 * l1;
    long l5 = n << 31;
    paramArrayOfInt2[(paramInt2 + 0)] = ((int)l3);
    j = (int)(l3 >>> 32);
    long l2 = paramArrayOfInt1[(paramInt1 + 1)] & 0xFFFFFFFF;
    long l4 = paramArrayOfInt2[(paramInt2 + 2)];
    long l7 = (l5 & 0xFFFFFFFF | l3 >>> 33) + l2 * l1;
    i = (int)l7;
    paramArrayOfInt2[(paramInt2 + 1)] = (i << 1 | j & 0x1);
    l3 = paramArrayOfInt1[(paramInt1 + 2)] & 0xFFFFFFFF;
    long l6 = paramArrayOfInt2[(paramInt2 + 3)];
    l5 = paramArrayOfInt2[(paramInt2 + 4)];
    l4 = (l4 & 0xFFFFFFFF) + (l7 >>> 32) + l3 * l1;
    j = (int)l4;
    paramArrayOfInt2[(paramInt2 + 2)] = (j << 1 | i >>> 31);
    long l8 = (l6 & 0xFFFFFFFF) + ((l4 >>> 32) + l3 * l2);
    l4 = paramArrayOfInt1[(paramInt1 + 3)] & 0xFFFFFFFF;
    l7 = paramArrayOfInt2[(paramInt2 + 5)];
    l6 = paramArrayOfInt2[(paramInt2 + 6)];
    long l9 = (l8 & 0xFFFFFFFF) + l4 * l1;
    i = (int)l9;
    paramArrayOfInt2[(paramInt2 + 3)] = (i << 1 | j >>> 31);
    long l10 = (l5 & 0xFFFFFFFF) + (l8 >>> 32) + ((l9 >>> 32) + l4 * l2);
    l9 = (l7 & 0xFFFFFFFF) + ((l10 >>> 32) + l4 * l3);
    l5 = paramArrayOfInt1[(paramInt1 + 4)] & 0xFFFFFFFF;
    l8 = paramArrayOfInt2[(paramInt2 + 7)];
    l7 = paramArrayOfInt2[(paramInt2 + 8)];
    l10 = (l10 & 0xFFFFFFFF) + l5 * l1;
    j = (int)l10;
    paramArrayOfInt2[(paramInt2 + 4)] = (j << 1 | i >>> 31);
    l10 = (l9 & 0xFFFFFFFF) + ((l10 >>> 32) + l5 * l2);
    long l11 = (l6 & 0xFFFFFFFF) + (l9 >>> 32) + ((l10 >>> 32) + l5 * l3);
    long l13 = (l8 & 0xFFFFFFFF) + ((l11 >>> 32) + l5 * l4);
    l6 = paramArrayOfInt1[(paramInt1 + 5)] & 0xFFFFFFFF;
    l8 = paramArrayOfInt2[(paramInt2 + 9)];
    l9 = paramArrayOfInt2[(paramInt2 + 10)];
    l10 = (l10 & 0xFFFFFFFF) + l6 * l1;
    i = (int)l10;
    paramArrayOfInt2[(paramInt2 + 5)] = (i << 1 | j >>> 31);
    long l12 = (l11 & 0xFFFFFFFF) + ((l10 >>> 32) + l6 * l2);
    l11 = (l13 & 0xFFFFFFFF) + ((l12 >>> 32) + l6 * l3);
    long l15 = (l7 & 0xFFFFFFFF) + (l13 >>> 32) + ((l11 >>> 32) + l6 * l4);
    l13 = (l8 & 0xFFFFFFFF) + ((l15 >>> 32) + l6 * l5);
    l7 = paramArrayOfInt1[(paramInt1 + 6)] & 0xFFFFFFFF;
    l10 = paramArrayOfInt2[(paramInt2 + 11)];
    l8 = paramArrayOfInt2[(paramInt2 + 12)];
    l12 = (l12 & 0xFFFFFFFF) + l7 * l1;
    j = (int)l12;
    paramArrayOfInt2[(paramInt2 + 6)] = (j << 1 | i >>> 31);
    long l14 = (l11 & 0xFFFFFFFF) + ((l12 >>> 32) + l7 * l2);
    l15 = (l15 & 0xFFFFFFFF) + ((l14 >>> 32) + l7 * l3);
    l12 = (l13 & 0xFFFFFFFF) + ((l15 >>> 32) + l7 * l4);
    long l16 = (l9 & 0xFFFFFFFF) + (l13 >>> 32) + ((l12 >>> 32) + l7 * l5);
    l13 = (l10 & 0xFFFFFFFF) + ((l16 >>> 32) + l7 * l6);
    l10 = paramArrayOfInt1[(paramInt1 + 7)] & 0xFFFFFFFF;
    l11 = paramArrayOfInt2[(paramInt2 + 13)];
    l9 = paramArrayOfInt2[(paramInt2 + 14)];
    l1 = (l14 & 0xFFFFFFFF) + l10 * l1;
    paramInt1 = (int)l1;
    paramArrayOfInt2[(paramInt2 + 7)] = (paramInt1 << 1 | j >>> 31);
    l1 = (l15 & 0xFFFFFFFF) + ((l1 >>> 32) + l10 * l2);
    l2 = (l12 & 0xFFFFFFFF) + ((l1 >>> 32) + l10 * l3);
    l3 = (l16 & 0xFFFFFFFF) + ((l2 >>> 32) + l10 * l4);
    l4 = (l13 & 0xFFFFFFFF) + ((l3 >>> 32) + l10 * l5);
    l5 = (l8 & 0xFFFFFFFF) + (l13 >>> 32) + ((l4 >>> 32) + l10 * l6);
    l6 = (l11 & 0xFFFFFFFF) + ((l5 >>> 32) + l10 * l7);
    l7 = (l9 & 0xFFFFFFFF) + (l6 >>> 32);
    i = (int)l1;
    paramArrayOfInt2[(paramInt2 + 8)] = (i << 1 | paramInt1 >>> 31);
    paramInt1 = (int)l2;
    paramArrayOfInt2[(paramInt2 + 9)] = (paramInt1 << 1 | i >>> 31);
    i = (int)l3;
    paramArrayOfInt2[(paramInt2 + 10)] = (i << 1 | paramInt1 >>> 31);
    paramInt1 = (int)l4;
    paramArrayOfInt2[(paramInt2 + 11)] = (paramInt1 << 1 | i >>> 31);
    i = (int)l5;
    paramArrayOfInt2[(paramInt2 + 12)] = (i << 1 | paramInt1 >>> 31);
    paramInt1 = (int)l6;
    paramArrayOfInt2[(paramInt2 + 13)] = (paramInt1 << 1 | i >>> 31);
    i = (int)l7;
    paramArrayOfInt2[(paramInt2 + 14)] = (i << 1 | paramInt1 >>> 31);
    paramArrayOfInt2[(paramInt2 + 15)] = (paramArrayOfInt2[(paramInt2 + 15)] + (int)(l7 >> 32) << 1 | i >>> 31);
  }
  
  public static int ˑ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l = 0L + ((paramArrayOfInt1[0] & 0xFFFFFFFF) + (paramArrayOfInt2[0] & 0xFFFFFFFF));
    paramArrayOfInt2[0] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[1] & 0xFFFFFFFF) + (paramArrayOfInt2[1] & 0xFFFFFFFF));
    paramArrayOfInt2[1] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[2] & 0xFFFFFFFF) + (paramArrayOfInt2[2] & 0xFFFFFFFF));
    paramArrayOfInt2[2] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[3] & 0xFFFFFFFF) + (paramArrayOfInt2[3] & 0xFFFFFFFF));
    paramArrayOfInt2[3] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[4] & 0xFFFFFFFF) + (paramArrayOfInt2[4] & 0xFFFFFFFF));
    paramArrayOfInt2[4] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[5] & 0xFFFFFFFF) + (paramArrayOfInt2[5] & 0xFFFFFFFF));
    paramArrayOfInt2[5] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[6] & 0xFFFFFFFF) + (paramArrayOfInt2[6] & 0xFFFFFFFF));
    paramArrayOfInt2[6] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[7] & 0xFFFFFFFF) + (paramArrayOfInt2[7] & 0xFFFFFFFF));
    paramArrayOfInt2[7] = ((int)l);
    return (int)(l >>> 32);
  }
  
  public static boolean ᐨ(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt[0] != 1) {
      return false;
    }
    int i = 1;
    while (i < 8)
    {
      if (paramArrayOfInt[i] != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static int ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    long l = 0L + ((paramArrayOfInt1[0] & 0xFFFFFFFF) + (paramArrayOfInt2[0] & 0xFFFFFFFF));
    paramArrayOfInt3[0] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[1] & 0xFFFFFFFF) + (paramArrayOfInt2[1] & 0xFFFFFFFF));
    paramArrayOfInt3[1] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[2] & 0xFFFFFFFF) + (paramArrayOfInt2[2] & 0xFFFFFFFF));
    paramArrayOfInt3[2] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[3] & 0xFFFFFFFF) + (paramArrayOfInt2[3] & 0xFFFFFFFF));
    paramArrayOfInt3[3] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[4] & 0xFFFFFFFF) + (paramArrayOfInt2[4] & 0xFFFFFFFF));
    paramArrayOfInt3[4] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[5] & 0xFFFFFFFF) + (paramArrayOfInt2[5] & 0xFFFFFFFF));
    paramArrayOfInt3[5] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[6] & 0xFFFFFFFF) + (paramArrayOfInt2[6] & 0xFFFFFFFF));
    paramArrayOfInt3[6] = ((int)l);
    l = (l >>> 32) + ((paramArrayOfInt1[7] & 0xFFFFFFFF) + (paramArrayOfInt2[7] & 0xFFFFFFFF));
    paramArrayOfInt3[7] = ((int)l);
    return (int)(l >>> 32);
  }
  
  public static void ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l1 = paramArrayOfInt1[0] & 0xFFFFFFFF;
    int j = 0;
    int i = 7;
    int k = 16;
    int m;
    int n;
    do
    {
      m = i - 1;
      l2 = paramArrayOfInt1[i] & 0xFFFFFFFF;
      l2 *= l2;
      i = k - 1;
      paramArrayOfInt2[i] = (j << 31 | (int)(l2 >>> 33));
      k = i - 1;
      paramArrayOfInt2[k] = ((int)(l2 >>> 1));
      n = (int)l2;
      j = n;
      i = m;
    } while (m > 0);
    long l3 = l1 * l1;
    long l5 = n << 31;
    paramArrayOfInt2[0] = ((int)l3);
    j = (int)(l3 >>> 32);
    long l2 = paramArrayOfInt1[1] & 0xFFFFFFFF;
    long l4 = paramArrayOfInt2[2];
    long l7 = (l5 & 0xFFFFFFFF | l3 >>> 33) + l2 * l1;
    i = (int)l7;
    paramArrayOfInt2[1] = (i << 1 | j & 0x1);
    l3 = paramArrayOfInt1[2] & 0xFFFFFFFF;
    long l6 = paramArrayOfInt2[3];
    l5 = paramArrayOfInt2[4];
    l4 = (l4 & 0xFFFFFFFF) + (l7 >>> 32) + l3 * l1;
    j = (int)l4;
    paramArrayOfInt2[2] = (j << 1 | i >>> 31);
    long l8 = (l6 & 0xFFFFFFFF) + ((l4 >>> 32) + l3 * l2);
    l4 = paramArrayOfInt1[3] & 0xFFFFFFFF;
    l7 = paramArrayOfInt2[5];
    l6 = paramArrayOfInt2[6];
    long l9 = (l8 & 0xFFFFFFFF) + l4 * l1;
    i = (int)l9;
    paramArrayOfInt2[3] = (i << 1 | j >>> 31);
    long l10 = (l5 & 0xFFFFFFFF) + (l8 >>> 32) + ((l9 >>> 32) + l4 * l2);
    l9 = (l7 & 0xFFFFFFFF) + ((l10 >>> 32) + l4 * l3);
    l5 = paramArrayOfInt1[4] & 0xFFFFFFFF;
    l8 = paramArrayOfInt2[7];
    l7 = paramArrayOfInt2[8];
    l10 = (l10 & 0xFFFFFFFF) + l5 * l1;
    j = (int)l10;
    paramArrayOfInt2[4] = (j << 1 | i >>> 31);
    l10 = (l9 & 0xFFFFFFFF) + ((l10 >>> 32) + l5 * l2);
    long l11 = (l6 & 0xFFFFFFFF) + (l9 >>> 32) + ((l10 >>> 32) + l5 * l3);
    long l13 = (l8 & 0xFFFFFFFF) + ((l11 >>> 32) + l5 * l4);
    l6 = paramArrayOfInt1[5] & 0xFFFFFFFF;
    l8 = paramArrayOfInt2[9];
    l9 = paramArrayOfInt2[10];
    l10 = (l10 & 0xFFFFFFFF) + l6 * l1;
    i = (int)l10;
    paramArrayOfInt2[5] = (i << 1 | j >>> 31);
    long l12 = (l11 & 0xFFFFFFFF) + ((l10 >>> 32) + l6 * l2);
    l11 = (l13 & 0xFFFFFFFF) + ((l12 >>> 32) + l6 * l3);
    long l15 = (l7 & 0xFFFFFFFF) + (l13 >>> 32) + ((l11 >>> 32) + l6 * l4);
    l13 = (l8 & 0xFFFFFFFF) + ((l15 >>> 32) + l6 * l5);
    l7 = paramArrayOfInt1[6] & 0xFFFFFFFF;
    l10 = paramArrayOfInt2[11];
    l8 = paramArrayOfInt2[12];
    l12 = (l12 & 0xFFFFFFFF) + l7 * l1;
    j = (int)l12;
    paramArrayOfInt2[6] = (j << 1 | i >>> 31);
    long l14 = (l11 & 0xFFFFFFFF) + ((l12 >>> 32) + l7 * l2);
    l15 = (l15 & 0xFFFFFFFF) + ((l14 >>> 32) + l7 * l3);
    l12 = (l13 & 0xFFFFFFFF) + ((l15 >>> 32) + l7 * l4);
    long l16 = (l9 & 0xFFFFFFFF) + (l13 >>> 32) + ((l12 >>> 32) + l7 * l5);
    l13 = (l10 & 0xFFFFFFFF) + ((l16 >>> 32) + l7 * l6);
    l10 = paramArrayOfInt1[7] & 0xFFFFFFFF;
    l11 = paramArrayOfInt2[13];
    l9 = paramArrayOfInt2[14];
    l1 = (l14 & 0xFFFFFFFF) + l10 * l1;
    i = (int)l1;
    paramArrayOfInt2[7] = (i << 1 | j >>> 31);
    l1 = (l15 & 0xFFFFFFFF) + ((l1 >>> 32) + l10 * l2);
    l2 = (l12 & 0xFFFFFFFF) + ((l1 >>> 32) + l10 * l3);
    l3 = (l16 & 0xFFFFFFFF) + ((l2 >>> 32) + l10 * l4);
    l4 = (l13 & 0xFFFFFFFF) + ((l3 >>> 32) + l10 * l5);
    l5 = (l8 & 0xFFFFFFFF) + (l13 >>> 32) + ((l4 >>> 32) + l10 * l6);
    l6 = (l11 & 0xFFFFFFFF) + ((l5 >>> 32) + l10 * l7);
    l7 = (l9 & 0xFFFFFFFF) + (l6 >>> 32);
    j = (int)l1;
    paramArrayOfInt2[8] = (j << 1 | i >>> 31);
    i = (int)l2;
    paramArrayOfInt2[9] = (i << 1 | j >>> 31);
    j = (int)l3;
    paramArrayOfInt2[10] = (j << 1 | i >>> 31);
    i = (int)l4;
    paramArrayOfInt2[11] = (i << 1 | j >>> 31);
    j = (int)l5;
    paramArrayOfInt2[12] = (j << 1 | i >>> 31);
    i = (int)l6;
    paramArrayOfInt2[13] = (i << 1 | j >>> 31);
    j = (int)l7;
    paramArrayOfInt2[14] = (j << 1 | i >>> 31);
    paramArrayOfInt2[15] = (paramArrayOfInt2[15] + (int)(l7 >> 32) << 1 | j >>> 31);
  }
  
  public static boolean ﹳ(int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < 8)
    {
      if (paramArrayOfInt[i] != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static int[] ﹳ(BigInteger paramBigInteger)
  {
    if ((paramBigInteger.signum() < 0) || (paramBigInteger.bitLength() > 256)) {
      throw new IllegalArgumentException();
    }
    int[] arrayOfInt = qv();
    int j;
    for (int i = 0; paramBigInteger.signum() != 0; i = j)
    {
      j = i + 1;
      arrayOfInt[i] = paramBigInteger.intValue();
      paramBigInteger = paramBigInteger.shiftRight(32);
    }
    return arrayOfInt;
  }
  
  public static BigInteger ﾞ(int[] paramArrayOfInt)
  {
    byte[] arrayOfByte = new byte[32];
    int i = 0;
    while (i < 8)
    {
      int j = paramArrayOfInt[i];
      if (j != 0) {
        Pack.ʾ(j, arrayOfByte, 7 - i << 2);
      }
      i += 1;
    }
    return new BigInteger(1, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.raw.Nat256
 * JD-Core Version:    0.7.0.1
 */