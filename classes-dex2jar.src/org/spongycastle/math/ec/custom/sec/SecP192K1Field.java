package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

public class SecP192K1Field
{
  static final int[] aIX = { -4553, -2, -1, -1, -1, -1 };
  static final int[] bdf = { 20729809, 9106, 1, 0, 0, 0, -9106, -3, -1, -1, -1, -1 };
  private static final int[] bdj = { -20729809, -9107, -2, -1, -1, -1, 9105, 2 };
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ʻ(6, paramArrayOfInt1, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[5] == -1) && (Nat192.ˉ(paramArrayOfInt2, aIX)))) {
      Nat.ᐝ(6, 4553, paramArrayOfInt2);
    }
  }
  
  public static void ʽ(int paramInt, int[] paramArrayOfInt)
  {
    if (((paramInt != 0) && (Nat192.ˋ(4553, paramInt, paramArrayOfInt, 0) != 0)) || ((paramArrayOfInt[5] == -1) && (Nat192.ˉ(paramArrayOfInt, aIX)))) {
      Nat.ᐝ(6, 4553, paramArrayOfInt);
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
      Nat.ᐝ(6, 4553, paramArrayOfInt2);
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
      Nat.ᐝ(6, 4553, paramArrayOfInt3);
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
    if ((Nat192.ˊ(4553, Nat192.ˊ(4553, paramArrayOfInt1, 6, paramArrayOfInt1, 0, paramArrayOfInt2, 0), paramArrayOfInt2, 0) != 0) || ((paramArrayOfInt2[5] == -1) && (Nat192.ˉ(paramArrayOfInt2, aIX)))) {
      Nat.ᐝ(6, 4553, paramArrayOfInt2);
    }
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (Nat192.ˉ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) {
      Nat.ʼ(6, 4553, paramArrayOfInt3);
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
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP192K1Field
 * JD-Core Version:    0.7.0.1
 */