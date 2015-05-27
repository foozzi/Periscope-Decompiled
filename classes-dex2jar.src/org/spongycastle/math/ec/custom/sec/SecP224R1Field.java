package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;

public class SecP224R1Field
{
  static final int[] aIX = { 1, 0, 0, -1, -1, -1, -1 };
  static final int[] bdf = { 1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1 };
  private static final int[] bdj = { -1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1 };
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ʻ(7, paramArrayOfInt1, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[6] == -1) && (Nat224.ˉ(paramArrayOfInt2, aIX)))) {
      ˉ(paramArrayOfInt2);
    }
  }
  
  public static void ʽ(int paramInt, int[] paramArrayOfInt)
  {
    long l1 = 0L;
    if (paramInt != 0)
    {
      long l3 = paramInt & 0xFFFFFFFF;
      l1 = 0L + ((paramArrayOfInt[0] & 0xFFFFFFFF) - l3);
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
      l1 += (paramArrayOfInt[3] & 0xFFFFFFFF) + l3;
      paramArrayOfInt[3] = ((int)l1);
      l1 >>= 32;
    }
    if (((l1 != 0L) && (Nat.ˎ(7, paramArrayOfInt, 4) != 0)) || ((paramArrayOfInt[6] == -1) && (Nat224.ˉ(paramArrayOfInt, aIX)))) {
      ˉ(paramArrayOfInt);
    }
  }
  
  public static void ʽ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (Nat224.ﹳ(paramArrayOfInt1))
    {
      Nat224.ʹ(paramArrayOfInt2);
      return;
    }
    Nat224.ˉ(aIX, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public static void ʾ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ˊ(7, paramArrayOfInt1, 0, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[6] == -1) && (Nat224.ˉ(paramArrayOfInt2, aIX)))) {
      ˉ(paramArrayOfInt2);
    }
  }
  
  private static void ˉ(int[] paramArrayOfInt)
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
    if (l1 >> 32 != 0L) {
      Nat.ˎ(7, paramArrayOfInt, 4);
    }
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int paramInt, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat224.qw();
    Nat224.ι(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
    for (;;)
    {
      paramInt -= 1;
      if (paramInt <= 0) {
        break;
      }
      Nat224.ι(paramArrayOfInt2, arrayOfInt);
      ͺ(arrayOfInt, paramArrayOfInt2);
    }
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if ((Nat224.ι(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || ((paramArrayOfInt3[6] == -1) && (Nat224.ˉ(paramArrayOfInt3, aIX)))) {
      ˉ(paramArrayOfInt3);
    }
  }
  
  private static void ˌ(int[] paramArrayOfInt)
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
    if (l1 >> 32 != 0L) {
      Nat.ˋ(7, paramArrayOfInt, 4);
    }
  }
  
  public static void ˎ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int[] arrayOfInt = Nat224.qw();
    Nat224.ʿ(paramArrayOfInt1, paramArrayOfInt2, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt3);
  }
  
  public static void ˏ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (((Nat224.ˈ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || ((paramArrayOfInt3[13] == -1) && (Nat.ᐝ(14, paramArrayOfInt3, bdf)))) && (Nat.ˎ(bdj.length, bdj, paramArrayOfInt3) != 0)) {
      Nat.ˎ(14, paramArrayOfInt3, bdj.length);
    }
  }
  
  public static void ͺ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l2 = paramArrayOfInt1[10] & 0xFFFFFFFF;
    long l7 = paramArrayOfInt1[11] & 0xFFFFFFFF;
    long l4 = paramArrayOfInt1[12] & 0xFFFFFFFF;
    long l3 = paramArrayOfInt1[13] & 0xFFFFFFFF;
    long l6 = (paramArrayOfInt1[7] & 0xFFFFFFFF) + l7 - 1L;
    long l8 = (paramArrayOfInt1[8] & 0xFFFFFFFF) + l4;
    long l5 = (paramArrayOfInt1[9] & 0xFFFFFFFF) + l3;
    long l1 = 0L + ((paramArrayOfInt1[0] & 0xFFFFFFFF) - l6);
    long l9 = (l1 >> 32) + ((paramArrayOfInt1[1] & 0xFFFFFFFF) - l8);
    paramArrayOfInt2[1] = ((int)l9);
    l9 = (l9 >> 32) + ((paramArrayOfInt1[2] & 0xFFFFFFFF) - l5);
    paramArrayOfInt2[2] = ((int)l9);
    l6 = (l9 >> 32) + ((paramArrayOfInt1[3] & 0xFFFFFFFF) + l6 - l2);
    l7 = (l6 >> 32) + ((paramArrayOfInt1[4] & 0xFFFFFFFF) + l8 - l7);
    paramArrayOfInt2[4] = ((int)l7);
    l4 = (l7 >> 32) + ((paramArrayOfInt1[5] & 0xFFFFFFFF) + l5 - l4);
    paramArrayOfInt2[5] = ((int)l4);
    l2 = (l4 >> 32) + ((paramArrayOfInt1[6] & 0xFFFFFFFF) + l2 - l3);
    paramArrayOfInt2[6] = ((int)l2);
    l3 = (l2 >> 32) + 1L;
    l2 = (l6 & 0xFFFFFFFF) + l3;
    l1 = (l1 & 0xFFFFFFFF) - l3;
    paramArrayOfInt2[0] = ((int)l1);
    l3 = l1 >> 32;
    l1 = l2;
    if (l3 != 0L)
    {
      l1 = l3 + (paramArrayOfInt2[1] & 0xFFFFFFFF);
      paramArrayOfInt2[1] = ((int)l1);
      l1 = (l1 >> 32) + (paramArrayOfInt2[2] & 0xFFFFFFFF);
      paramArrayOfInt2[2] = ((int)l1);
      l1 = l2 + (l1 >> 32);
    }
    paramArrayOfInt2[3] = ((int)l1);
    if (((l1 >> 32 != 0L) && (Nat.ˎ(7, paramArrayOfInt2, 4) != 0)) || ((paramArrayOfInt2[6] == -1) && (Nat224.ˉ(paramArrayOfInt2, aIX)))) {
      ˉ(paramArrayOfInt2);
    }
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (Nat224.ˉ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) {
      ˌ(paramArrayOfInt3);
    }
  }
  
  public static void ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat224.qw();
    Nat224.ι(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
  }
  
  public static int[] ﹳ(BigInteger paramBigInteger)
  {
    paramBigInteger = Nat224.ﹳ(paramBigInteger);
    if ((paramBigInteger[6] == -1) && (Nat224.ˉ(paramBigInteger, aIX))) {
      Nat224.ˌ(aIX, paramBigInteger);
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP224R1Field
 * JD-Core Version:    0.7.0.1
 */