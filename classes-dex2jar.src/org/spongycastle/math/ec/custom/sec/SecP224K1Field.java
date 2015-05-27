package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;

public class SecP224K1Field
{
  static final int[] aIX = { -6803, -2, -1, -1, -1, -1, -1 };
  static final int[] bdf = { 46280809, 13606, 1, 0, 0, 0, 0, -13606, -3, -1, -1, -1, -1, -1 };
  private static final int[] bdj = { -46280809, -13607, -2, -1, -1, -1, -1, 13605, 2 };
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ʻ(7, paramArrayOfInt1, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[6] == -1) && (Nat224.ˉ(paramArrayOfInt2, aIX)))) {
      Nat.ᐝ(7, 6803, paramArrayOfInt2);
    }
  }
  
  public static void ʽ(int paramInt, int[] paramArrayOfInt)
  {
    if (((paramInt != 0) && (Nat224.ˋ(6803, paramInt, paramArrayOfInt, 0) != 0)) || ((paramArrayOfInt[6] == -1) && (Nat224.ˉ(paramArrayOfInt, aIX)))) {
      Nat.ᐝ(7, 6803, paramArrayOfInt);
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
      Nat.ᐝ(7, 6803, paramArrayOfInt2);
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
      Nat.ᐝ(7, 6803, paramArrayOfInt3);
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
    if ((Nat224.ˊ(6803, Nat224.ˊ(6803, paramArrayOfInt1, 7, paramArrayOfInt1, 0, paramArrayOfInt2, 0), paramArrayOfInt2, 0) != 0) || ((paramArrayOfInt2[6] == -1) && (Nat224.ˉ(paramArrayOfInt2, aIX)))) {
      Nat.ᐝ(7, 6803, paramArrayOfInt2);
    }
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (Nat224.ˉ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) {
      Nat.ʼ(7, 6803, paramArrayOfInt3);
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
      Nat.ᐝ(7, 6803, paramBigInteger);
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP224K1Field
 * JD-Core Version:    0.7.0.1
 */