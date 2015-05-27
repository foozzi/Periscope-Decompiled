package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

public class SecP256R1Field
{
  static final int[] aIX = { -1, -1, -1, 0, 0, 0, 1, -1 };
  static final int[] bdf = { 1, 0, 0, -2, -1, -1, -2, 1, -2, 1, -2, 1, 1, -2, 2, -2 };
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ʻ(8, paramArrayOfInt1, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[7] == -1) && (Nat256.ˉ(paramArrayOfInt2, aIX)))) {
      ˉ(paramArrayOfInt2);
    }
  }
  
  public static void ʽ(int paramInt, int[] paramArrayOfInt)
  {
    long l1 = 0L;
    if (paramInt != 0)
    {
      long l3 = paramInt & 0xFFFFFFFF;
      l1 = 0L + ((paramArrayOfInt[0] & 0xFFFFFFFF) + l3);
      paramArrayOfInt[0] = ((int)l1);
      long l2 = l1 >> 32;
      l1 = l2;
      if (l2 != 0L)
      {
        l1 = l2 + (paramArrayOfInt[1] & 0xFFFFFFFF);
        paramArrayOfInt[1] = ((int)l1);
        l1 = (l1 >> 32) + (paramArrayOfInt[2] & 0xFFFFFFFF);
        paramArrayOfInt[2] = ((int)l1);
        l1 >>= 32;
      }
      l1 += (paramArrayOfInt[3] & 0xFFFFFFFF) - l3;
      paramArrayOfInt[3] = ((int)l1);
      l2 = l1 >> 32;
      l1 = l2;
      if (l2 != 0L)
      {
        l1 = l2 + (paramArrayOfInt[4] & 0xFFFFFFFF);
        paramArrayOfInt[4] = ((int)l1);
        l1 = (l1 >> 32) + (paramArrayOfInt[5] & 0xFFFFFFFF);
        paramArrayOfInt[5] = ((int)l1);
        l1 >>= 32;
      }
      l1 += (paramArrayOfInt[6] & 0xFFFFFFFF) - l3;
      paramArrayOfInt[6] = ((int)l1);
      l1 = (l1 >> 32) + ((paramArrayOfInt[7] & 0xFFFFFFFF) + l3);
      paramArrayOfInt[7] = ((int)l1);
      l1 >>= 32;
    }
    if ((l1 != 0L) || ((paramArrayOfInt[7] == -1) && (Nat256.ˉ(paramArrayOfInt, aIX)))) {
      ˉ(paramArrayOfInt);
    }
  }
  
  public static void ʽ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (Nat256.ﹳ(paramArrayOfInt1))
    {
      Nat256.ʹ(paramArrayOfInt2);
      return;
    }
    Nat256.ˉ(aIX, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public static void ʾ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ˊ(8, paramArrayOfInt1, 0, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[7] == -1) && (Nat256.ˉ(paramArrayOfInt2, aIX)))) {
      ˉ(paramArrayOfInt2);
    }
  }
  
  private static void ˉ(int[] paramArrayOfInt)
  {
    long l1 = (paramArrayOfInt[0] & 0xFFFFFFFF) + 1L;
    paramArrayOfInt[0] = ((int)l1);
    long l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L)
    {
      l1 = l2 + (paramArrayOfInt[1] & 0xFFFFFFFF);
      paramArrayOfInt[1] = ((int)l1);
      l1 = (l1 >> 32) + (paramArrayOfInt[2] & 0xFFFFFFFF);
      paramArrayOfInt[2] = ((int)l1);
      l1 >>= 32;
    }
    l1 += (paramArrayOfInt[3] & 0xFFFFFFFF) - 1L;
    paramArrayOfInt[3] = ((int)l1);
    l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L)
    {
      l1 = l2 + (paramArrayOfInt[4] & 0xFFFFFFFF);
      paramArrayOfInt[4] = ((int)l1);
      l1 = (l1 >> 32) + (paramArrayOfInt[5] & 0xFFFFFFFF);
      paramArrayOfInt[5] = ((int)l1);
      l1 >>= 32;
    }
    l1 += (paramArrayOfInt[6] & 0xFFFFFFFF) - 1L;
    paramArrayOfInt[6] = ((int)l1);
    paramArrayOfInt[7] = ((int)((l1 >> 32) + ((paramArrayOfInt[7] & 0xFFFFFFFF) + 1L)));
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int paramInt, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat256.qw();
    Nat256.ι(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
    for (;;)
    {
      paramInt -= 1;
      if (paramInt <= 0) {
        break;
      }
      Nat256.ι(paramArrayOfInt2, arrayOfInt);
      ͺ(arrayOfInt, paramArrayOfInt2);
    }
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if ((Nat256.ι(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || ((paramArrayOfInt3[7] == -1) && (Nat256.ˉ(paramArrayOfInt3, aIX)))) {
      ˉ(paramArrayOfInt3);
    }
  }
  
  private static void ˌ(int[] paramArrayOfInt)
  {
    long l1 = (paramArrayOfInt[0] & 0xFFFFFFFF) - 1L;
    paramArrayOfInt[0] = ((int)l1);
    long l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L)
    {
      l1 = l2 + (paramArrayOfInt[1] & 0xFFFFFFFF);
      paramArrayOfInt[1] = ((int)l1);
      l1 = (l1 >> 32) + (paramArrayOfInt[2] & 0xFFFFFFFF);
      paramArrayOfInt[2] = ((int)l1);
      l1 >>= 32;
    }
    l1 += (paramArrayOfInt[3] & 0xFFFFFFFF) + 1L;
    paramArrayOfInt[3] = ((int)l1);
    l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L)
    {
      l1 = l2 + (paramArrayOfInt[4] & 0xFFFFFFFF);
      paramArrayOfInt[4] = ((int)l1);
      l1 = (l1 >> 32) + (paramArrayOfInt[5] & 0xFFFFFFFF);
      paramArrayOfInt[5] = ((int)l1);
      l1 >>= 32;
    }
    l1 += (paramArrayOfInt[6] & 0xFFFFFFFF) + 1L;
    paramArrayOfInt[6] = ((int)l1);
    paramArrayOfInt[7] = ((int)((l1 >> 32) + ((paramArrayOfInt[7] & 0xFFFFFFFF) - 1L)));
  }
  
  public static void ˎ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int[] arrayOfInt = Nat256.qw();
    Nat256.ʿ(paramArrayOfInt1, paramArrayOfInt2, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt3);
  }
  
  public static void ˏ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if ((Nat256.ˈ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || (((paramArrayOfInt3[15] & 0xFFFFFFFF) == -1) && (Nat.ᐝ(16, paramArrayOfInt3, bdf)))) {
      Nat.ʼ(16, bdf, paramArrayOfInt3);
    }
  }
  
  public static void ͺ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l2 = paramArrayOfInt1[8];
    long l7 = paramArrayOfInt1[9] & 0xFFFFFFFF;
    long l5 = paramArrayOfInt1[10] & 0xFFFFFFFF;
    long l9 = paramArrayOfInt1[11] & 0xFFFFFFFF;
    long l8 = paramArrayOfInt1[12] & 0xFFFFFFFF;
    long l6 = paramArrayOfInt1[13] & 0xFFFFFFFF;
    long l4 = paramArrayOfInt1[14] & 0xFFFFFFFF;
    long l1 = paramArrayOfInt1[15] & 0xFFFFFFFF;
    l2 = (l2 & 0xFFFFFFFF) - 6L;
    long l3 = l2 + l7;
    l7 += l5;
    l5 = l5 + l9 - l1;
    long l11 = l9 + l8;
    l8 += l6;
    l9 = l6 + l4;
    long l10 = l4 + l1;
    long l12 = 0L + ((paramArrayOfInt1[0] & 0xFFFFFFFF) + l3 - l11 - l9);
    paramArrayOfInt2[0] = ((int)l12);
    l12 = (l12 >> 32) + ((paramArrayOfInt1[1] & 0xFFFFFFFF) + l7 - l8 - l10);
    paramArrayOfInt2[1] = ((int)l12);
    l12 = (l12 >> 32) + ((paramArrayOfInt1[2] & 0xFFFFFFFF) + l5 - l9);
    paramArrayOfInt2[2] = ((int)l12);
    l6 = (l12 >> 32) + ((paramArrayOfInt1[3] & 0xFFFFFFFF) + (l11 << 1) + l6 - l1 - l3);
    paramArrayOfInt2[3] = ((int)l6);
    l4 = (l6 >> 32) + ((paramArrayOfInt1[4] & 0xFFFFFFFF) + (l8 << 1) + l4 - l7);
    paramArrayOfInt2[4] = ((int)l4);
    l4 = (l4 >> 32) + ((paramArrayOfInt1[5] & 0xFFFFFFFF) + (l9 << 1) - l5);
    paramArrayOfInt2[5] = ((int)l4);
    l3 = (l4 >> 32) + ((paramArrayOfInt1[6] & 0xFFFFFFFF) + (l10 << 1) + l9 - l3);
    paramArrayOfInt2[6] = ((int)l3);
    l1 = (l3 >> 32) + ((paramArrayOfInt1[7] & 0xFFFFFFFF) + (l1 << 1) + l2 - l5 - l8);
    paramArrayOfInt2[7] = ((int)l1);
    ʽ((int)((l1 >> 32) + 6L), paramArrayOfInt2);
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (Nat256.ˉ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) {
      ˌ(paramArrayOfInt3);
    }
  }
  
  public static void ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat256.qw();
    Nat256.ι(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
  }
  
  public static int[] ﹳ(BigInteger paramBigInteger)
  {
    paramBigInteger = Nat256.ﹳ(paramBigInteger);
    if ((paramBigInteger[7] == -1) && (Nat256.ˉ(paramBigInteger, aIX))) {
      Nat256.ˌ(aIX, paramBigInteger);
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP256R1Field
 * JD-Core Version:    0.7.0.1
 */