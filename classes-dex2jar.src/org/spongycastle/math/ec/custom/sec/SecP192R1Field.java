package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

public class SecP192R1Field
{
  static final int[] aIX = { -1, -1, -2, -1, -1, -1 };
  static final int[] bdf = { 1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1 };
  private static final int[] bdj = { -1, -1, -3, -1, -2, -1, 1, 0, 2 };
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ʻ(6, paramArrayOfInt1, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[5] == -1) && (Nat192.ˉ(paramArrayOfInt2, aIX)))) {
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
        l1 >>= 32;
      }
      l1 += (paramArrayOfInt[2] & 0xFFFFFFFF) + l3;
      paramArrayOfInt[2] = ((int)l1);
      l1 >>= 32;
    }
    if (((l1 != 0L) && (Nat.ˎ(6, paramArrayOfInt, 3) != 0)) || ((paramArrayOfInt[5] == -1) && (Nat192.ˉ(paramArrayOfInt, aIX)))) {
      ˉ(paramArrayOfInt);
    }
  }
  
  public static void ʽ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (Nat192.ﹳ(paramArrayOfInt1))
    {
      Nat192.ʹ(paramArrayOfInt2);
      return;
    }
    Nat192.ˉ(aIX, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public static void ʾ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ˊ(6, paramArrayOfInt1, 0, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[5] == -1) && (Nat192.ˉ(paramArrayOfInt2, aIX)))) {
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
      l1 >>= 32;
    }
    l1 += (paramArrayOfInt[2] & 0xFFFFFFFF) + 1L;
    paramArrayOfInt[2] = ((int)l1);
    if (l1 >> 32 != 0L) {
      Nat.ˎ(6, paramArrayOfInt, 3);
    }
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int paramInt, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat192.qw();
    Nat192.ι(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
    for (;;)
    {
      paramInt -= 1;
      if (paramInt <= 0) {
        break;
      }
      Nat192.ι(paramArrayOfInt2, arrayOfInt);
      ͺ(arrayOfInt, paramArrayOfInt2);
    }
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if ((Nat192.ι(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || ((paramArrayOfInt3[5] == -1) && (Nat192.ˉ(paramArrayOfInt3, aIX)))) {
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
      l1 >>= 32;
    }
    l1 += (paramArrayOfInt[2] & 0xFFFFFFFF) - 1L;
    paramArrayOfInt[2] = ((int)l1);
    if (l1 >> 32 != 0L) {
      Nat.ˋ(6, paramArrayOfInt, 3);
    }
  }
  
  public static void ˎ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int[] arrayOfInt = Nat192.qw();
    Nat192.ʿ(paramArrayOfInt1, paramArrayOfInt2, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt3);
  }
  
  public static void ˏ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (((Nat192.ˈ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || ((paramArrayOfInt3[11] == -1) && (Nat.ᐝ(12, paramArrayOfInt3, bdf)))) && (Nat.ˎ(bdj.length, bdj, paramArrayOfInt3) != 0)) {
      Nat.ˎ(12, paramArrayOfInt3, bdj.length);
    }
  }
  
  public static void ͺ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    long l2 = paramArrayOfInt1[6] & 0xFFFFFFFF;
    long l1 = paramArrayOfInt1[7] & 0xFFFFFFFF;
    long l4 = paramArrayOfInt1[8];
    long l3 = paramArrayOfInt1[9];
    long l5 = paramArrayOfInt1[10];
    long l6 = paramArrayOfInt1[11];
    l5 = l2 + (l5 & 0xFFFFFFFF);
    l6 = l1 + (l6 & 0xFFFFFFFF);
    long l7 = 0L + ((paramArrayOfInt1[0] & 0xFFFFFFFF) + l5);
    int i = (int)l7;
    l7 = (l7 >> 32) + ((paramArrayOfInt1[1] & 0xFFFFFFFF) + l6);
    paramArrayOfInt2[1] = ((int)l7);
    l4 = l5 + (l4 & 0xFFFFFFFF);
    l5 = l6 + (l3 & 0xFFFFFFFF);
    l3 = (l7 >> 32) + ((paramArrayOfInt1[2] & 0xFFFFFFFF) + l4);
    l6 = (l3 >> 32) + ((paramArrayOfInt1[3] & 0xFFFFFFFF) + l5);
    paramArrayOfInt2[3] = ((int)l6);
    l2 = (l6 >> 32) + ((paramArrayOfInt1[4] & 0xFFFFFFFF) + (l4 - l2));
    paramArrayOfInt2[4] = ((int)l2);
    l1 = (l2 >> 32) + ((paramArrayOfInt1[5] & 0xFFFFFFFF) + (l5 - l1));
    paramArrayOfInt2[5] = ((int)l1);
    l1 >>= 32;
    l2 = (l3 & 0xFFFFFFFF) + l1;
    l1 += (i & 0xFFFFFFFF);
    paramArrayOfInt2[0] = ((int)l1);
    l3 = l1 >> 32;
    l1 = l2;
    if (l3 != 0L)
    {
      l1 = l3 + (paramArrayOfInt2[1] & 0xFFFFFFFF);
      paramArrayOfInt2[1] = ((int)l1);
      l1 = l2 + (l1 >> 32);
    }
    paramArrayOfInt2[2] = ((int)l1);
    if (((l1 >> 32 != 0L) && (Nat.ˎ(6, paramArrayOfInt2, 3) != 0)) || ((paramArrayOfInt2[5] == -1) && (Nat192.ˉ(paramArrayOfInt2, aIX)))) {
      ˉ(paramArrayOfInt2);
    }
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (Nat192.ˉ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) {
      ˌ(paramArrayOfInt3);
    }
  }
  
  public static void ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat192.qw();
    Nat192.ι(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
  }
  
  public static int[] ﹳ(BigInteger paramBigInteger)
  {
    paramBigInteger = Nat192.ﹳ(paramBigInteger);
    if ((paramBigInteger[5] == -1) && (Nat192.ˉ(paramBigInteger, aIX))) {
      Nat192.ˌ(aIX, paramBigInteger);
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP192R1Field
 * JD-Core Version:    0.7.0.1
 */