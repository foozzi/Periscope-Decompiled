package org.spongycastle.math.ec.custom.djb;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

public class Curve25519Field
{
  static final int[] aIX = { -19, -1, -1, -1, -1, -1, -1, 2147483647 };
  private static final int[] bdf = { 361, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, 1073741823 };
  
  public static void ʼ(int paramInt, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt[7];
    paramArrayOfInt[7] = ((i & 0x7FFFFFFF) + Nat.ʻ(7, (paramInt << 1 | i >>> 31) * 19, paramArrayOfInt));
    if (Nat256.ˉ(paramArrayOfInt, aIX)) {
      ʿ(paramArrayOfInt);
    }
  }
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Nat.ʻ(8, paramArrayOfInt1, paramArrayOfInt2);
    if (Nat256.ˉ(paramArrayOfInt2, aIX)) {
      ʿ(paramArrayOfInt2);
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
  
  private static int ʾ(int[] paramArrayOfInt)
  {
    long l1 = (paramArrayOfInt[0] & 0xFFFFFFFF) - 19L;
    paramArrayOfInt[0] = ((int)l1);
    long l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L) {
      l1 = Nat.ˋ(7, paramArrayOfInt, 1);
    }
    l1 += (paramArrayOfInt[7] & 0xFFFFFFFF) + 2147483648L;
    paramArrayOfInt[7] = ((int)l1);
    return (int)(l1 >> 32);
  }
  
  public static void ʾ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Nat.ˊ(8, paramArrayOfInt1, 0, paramArrayOfInt2);
    if (Nat256.ˉ(paramArrayOfInt2, aIX)) {
      ʿ(paramArrayOfInt2);
    }
  }
  
  private static int ʿ(int[] paramArrayOfInt)
  {
    long l1 = (paramArrayOfInt[0] & 0xFFFFFFFF) + 19L;
    paramArrayOfInt[0] = ((int)l1);
    long l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L) {
      l1 = Nat.ˎ(7, paramArrayOfInt, 1);
    }
    l1 += (paramArrayOfInt[7] & 0xFFFFFFFF) - 2147483648L;
    paramArrayOfInt[7] = ((int)l1);
    return (int)(l1 >> 32);
  }
  
  private static int ˈ(int[] paramArrayOfInt)
  {
    long l1 = (paramArrayOfInt[0] & 0xFFFFFFFF) - (bdf[0] & 0xFFFFFFFF);
    paramArrayOfInt[0] = ((int)l1);
    long l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L) {
      l1 = Nat.ˋ(8, paramArrayOfInt, 1);
    }
    l1 += (paramArrayOfInt[8] & 0xFFFFFFFF) + 19L;
    paramArrayOfInt[8] = ((int)l1);
    l2 = l1 >> 32;
    l1 = l2;
    if (l2 != 0L) {
      l1 = Nat.ˎ(15, paramArrayOfInt, 9);
    }
    l1 += (paramArrayOfInt[15] & 0xFFFFFFFF) - (bdf[15] + 1 & 0xFFFFFFFF);
    paramArrayOfInt[15] = ((int)l1);
    return (int)(l1 >> 32);
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
    Nat256.ι(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3);
    if (Nat256.ˉ(paramArrayOfInt3, aIX)) {
      ʿ(paramArrayOfInt3);
    }
  }
  
  public static void ˎ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int[] arrayOfInt = Nat256.qw();
    Nat256.ʿ(paramArrayOfInt1, paramArrayOfInt2, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt3);
  }
  
  public static void ˏ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    Nat256.ˈ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3);
    if (Nat.ᐝ(16, paramArrayOfInt3, bdf)) {
      ˈ(paramArrayOfInt3);
    }
  }
  
  public static void ͺ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = paramArrayOfInt1[7];
    Nat.ˊ(8, paramArrayOfInt1, 8, i, paramArrayOfInt2, 0);
    int j = Nat256.ʽ(19, paramArrayOfInt1, paramArrayOfInt2);
    int k = paramArrayOfInt2[7];
    paramArrayOfInt2[7] = ((k & 0x7FFFFFFF) + Nat.ʻ(7, ((j << 1) + ((k >>> 31) - (i >>> 31))) * 19, paramArrayOfInt2));
    if (Nat256.ˉ(paramArrayOfInt2, aIX)) {
      ʿ(paramArrayOfInt2);
    }
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (Nat256.ˉ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) {
      ʾ(paramArrayOfInt3);
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
    while (Nat256.ˉ(paramBigInteger, aIX)) {
      Nat256.ˌ(aIX, paramBigInteger);
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.djb.Curve25519Field
 * JD-Core Version:    0.7.0.1
 */