package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat384;

public class SecP384R1Field
{
  static final int[] aIX = { -1, 0, 0, -1, -2, -1, -1, -1, -1, -1, -1, -1 };
  static final int[] bdf = { 1, -2, 0, 2, 0, -2, 0, 2, 1, 0, 0, 0, -2, 1, 0, -2, -3, -1, -1, -1, -1, -1, -1, -1 };
  private static final int[] bdj = { -1, 1, -1, -3, -1, 1, -1, -3, -2, -1, -1, -1, 1, -2, -1, 1, 2 };
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ʻ(12, paramArrayOfInt1, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[11] == -1) && (Nat.ᐝ(12, paramArrayOfInt2, aIX)))) {
      ˉ(paramArrayOfInt2);
    }
  }
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (((Nat.ˊ(24, paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || ((paramArrayOfInt3[23] == -1) && (Nat.ᐝ(24, paramArrayOfInt3, bdf)))) && (Nat.ˎ(bdj.length, bdj, paramArrayOfInt3) != 0)) {
      Nat.ˎ(24, paramArrayOfInt3, bdj.length);
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
      l1 = (l1 >> 32) + ((paramArrayOfInt[1] & 0xFFFFFFFF) - l3);
      paramArrayOfInt[1] = ((int)l1);
      long l2 = l1 >> 32;
      l1 = l2;
      if (l2 != 0L)
      {
        l1 = l2 + (paramArrayOfInt[2] & 0xFFFFFFFF);
        paramArrayOfInt[2] = ((int)l1);
        l1 >>= 32;
      }
      l1 += (paramArrayOfInt[3] & 0xFFFFFFFF) + l3;
      paramArrayOfInt[3] = ((int)l1);
      l1 = (l1 >> 32) + ((paramArrayOfInt[4] & 0xFFFFFFFF) + l3);
      paramArrayOfInt[4] = ((int)l1);
      l1 >>= 32;
    }
    if (((l1 != 0L) && (Nat.ˎ(12, paramArrayOfInt, 5) != 0)) || ((paramArrayOfInt[11] == -1) && (Nat.ᐝ(12, paramArrayOfInt, aIX)))) {
      ˉ(paramArrayOfInt);
    }
  }
  
  public static void ʽ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (Nat.ˈ(12, paramArrayOfInt1))
    {
      Nat.ˌ(12, paramArrayOfInt2);
      return;
    }
    Nat.ˎ(12, aIX, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public static void ʾ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ˊ(12, paramArrayOfInt1, 0, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[11] == -1) && (Nat.ᐝ(12, paramArrayOfInt2, aIX)))) {
      ˉ(paramArrayOfInt2);
    }
  }
  
  private static void ˉ(int[] paramArrayOfInt)
  {
    long l1 = (paramArrayOfInt[0] & 0xFFFFFFFF) + 1L;
    paramArrayOfInt[0] = ((int)l1);
    l1 = (l1 >> 32) + ((paramArrayOfInt[1] & 0xFFFFFFFF) - 1L);
    paramArrayOfInt[1] = ((int)l1);
    long l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L)
    {
      l1 = l2 + (paramArrayOfInt[2] & 0xFFFFFFFF);
      paramArrayOfInt[2] = ((int)l1);
      l1 >>= 32;
    }
    l1 += (paramArrayOfInt[3] & 0xFFFFFFFF) + 1L;
    paramArrayOfInt[3] = ((int)l1);
    l1 = (l1 >> 32) + ((paramArrayOfInt[4] & 0xFFFFFFFF) + 1L);
    paramArrayOfInt[4] = ((int)l1);
    if (l1 >> 32 != 0L) {
      Nat.ˎ(12, paramArrayOfInt, 5);
    }
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int paramInt, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat.ċ(24);
    Nat384.ι(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
    for (;;)
    {
      paramInt -= 1;
      if (paramInt <= 0) {
        break;
      }
      Nat384.ι(paramArrayOfInt2, arrayOfInt);
      ͺ(arrayOfInt, paramArrayOfInt2);
    }
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if ((Nat.ˊ(12, paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || ((paramArrayOfInt3[11] == -1) && (Nat.ᐝ(12, paramArrayOfInt3, aIX)))) {
      ˉ(paramArrayOfInt3);
    }
  }
  
  private static void ˌ(int[] paramArrayOfInt)
  {
    long l1 = (paramArrayOfInt[0] & 0xFFFFFFFF) - 1L;
    paramArrayOfInt[0] = ((int)l1);
    l1 = (l1 >> 32) + ((paramArrayOfInt[1] & 0xFFFFFFFF) + 1L);
    paramArrayOfInt[1] = ((int)l1);
    long l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L)
    {
      l1 = l2 + (paramArrayOfInt[2] & 0xFFFFFFFF);
      paramArrayOfInt[2] = ((int)l1);
      l1 >>= 32;
    }
    l1 += (paramArrayOfInt[3] & 0xFFFFFFFF) - 1L;
    paramArrayOfInt[3] = ((int)l1);
    l1 = (l1 >> 32) + ((paramArrayOfInt[4] & 0xFFFFFFFF) - 1L);
    paramArrayOfInt[4] = ((int)l1);
    if (l1 >> 32 != 0L) {
      Nat.ˋ(12, paramArrayOfInt, 5);
    }
  }
  
  public static void ˎ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int[] arrayOfInt = Nat.ċ(24);
    Nat384.ʿ(paramArrayOfInt1, paramArrayOfInt2, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt3);
  }
  
  public static void ͺ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l7 = paramArrayOfInt1[16] & 0xFFFFFFFF;
    long l8 = paramArrayOfInt1[17] & 0xFFFFFFFF;
    long l3 = paramArrayOfInt1[18] & 0xFFFFFFFF;
    long l1 = paramArrayOfInt1[19] & 0xFFFFFFFF;
    long l2 = paramArrayOfInt1[20] & 0xFFFFFFFF;
    long l12 = paramArrayOfInt1[21] & 0xFFFFFFFF;
    long l5 = paramArrayOfInt1[22] & 0xFFFFFFFF;
    long l14 = paramArrayOfInt1[23] & 0xFFFFFFFF;
    long l13 = (paramArrayOfInt1[12] & 0xFFFFFFFF) + l2 - 1L;
    long l11 = (paramArrayOfInt1[13] & 0xFFFFFFFF) + l5;
    long l10 = (paramArrayOfInt1[14] & 0xFFFFFFFF) + l5 + l14;
    long l9 = (paramArrayOfInt1[15] & 0xFFFFFFFF) + l14;
    long l6 = l8 + l12;
    long l4 = l12 - l14;
    l5 -= l14;
    long l15 = 0L + ((paramArrayOfInt1[0] & 0xFFFFFFFF) + l13 + l4);
    paramArrayOfInt2[0] = ((int)l15);
    l14 = (l15 >> 32) + ((paramArrayOfInt1[1] & 0xFFFFFFFF) + l14 - l13 + l11);
    paramArrayOfInt2[1] = ((int)l14);
    l14 = (l14 >> 32) + ((paramArrayOfInt1[2] & 0xFFFFFFFF) - l12 - l11 + l10);
    paramArrayOfInt2[2] = ((int)l14);
    l14 = (l14 >> 32) + ((paramArrayOfInt1[3] & 0xFFFFFFFF) + l13 - l10 + l9 + l4);
    paramArrayOfInt2[3] = ((int)l14);
    l12 = (l14 >> 32) + ((paramArrayOfInt1[4] & 0xFFFFFFFF) + l7 + l12 + l13 + l11 - l9 + l4);
    paramArrayOfInt2[4] = ((int)l12);
    l11 = (l12 >> 32) + ((paramArrayOfInt1[5] & 0xFFFFFFFF) - l7 + l11 + l10 + l6);
    paramArrayOfInt2[5] = ((int)l11);
    l10 = (l11 >> 32) + ((paramArrayOfInt1[6] & 0xFFFFFFFF) + l3 - l8 + l10 + l9);
    paramArrayOfInt2[6] = ((int)l10);
    l9 = (l10 >> 32) + ((paramArrayOfInt1[7] & 0xFFFFFFFF) + l7 + l1 - l3 + l9);
    paramArrayOfInt2[7] = ((int)l9);
    l7 = (l9 >> 32) + ((paramArrayOfInt1[8] & 0xFFFFFFFF) + l7 + l8 + l2 - l1);
    paramArrayOfInt2[8] = ((int)l7);
    l6 = (l7 >> 32) + ((paramArrayOfInt1[9] & 0xFFFFFFFF) + l3 - l2 + l6);
    paramArrayOfInt2[9] = ((int)l6);
    l3 = (l6 >> 32) + ((paramArrayOfInt1[10] & 0xFFFFFFFF) + l3 + l1 - l4 + l5);
    paramArrayOfInt2[10] = ((int)l3);
    l1 = (l3 >> 32) + ((paramArrayOfInt1[11] & 0xFFFFFFFF) + l1 + l2 - l5);
    paramArrayOfInt2[11] = ((int)l1);
    ʽ((int)((l1 >> 32) + 1L), paramArrayOfInt2);
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (Nat.ˎ(12, paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) {
      ˌ(paramArrayOfInt3);
    }
  }
  
  public static void ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat.ċ(24);
    Nat384.ι(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
  }
  
  public static int[] ﹳ(BigInteger paramBigInteger)
  {
    paramBigInteger = Nat.ᐝ(384, paramBigInteger);
    if ((paramBigInteger[11] == -1) && (Nat.ᐝ(12, paramBigInteger, aIX))) {
      Nat.ʼ(12, aIX, paramBigInteger);
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP384R1Field
 * JD-Core Version:    0.7.0.1
 */