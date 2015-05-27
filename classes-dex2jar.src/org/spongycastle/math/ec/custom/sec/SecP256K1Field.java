package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

public class SecP256K1Field
{
  static final int[] aIX = { -977, -2, -1, -1, -1, -1, -1, -1 };
  static final int[] bdf = { 954529, 1954, 1, 0, 0, 0, 0, 0, -1954, -3, -1, -1, -1, -1, -1, -1 };
  private static final int[] bdj = { -954529, -1955, -2, -1, -1, -1, -1, -1, 1953, 2 };
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat.ʻ(8, paramArrayOfInt1, paramArrayOfInt2) != 0) || ((paramArrayOfInt2[7] == -1) && (Nat256.ˉ(paramArrayOfInt2, aIX)))) {
      Nat.ᐝ(8, 977, paramArrayOfInt2);
    }
  }
  
  public static void ʽ(int paramInt, int[] paramArrayOfInt)
  {
    if (((paramInt != 0) && (Nat256.ˋ(977, paramInt, paramArrayOfInt, 0) != 0)) || ((paramArrayOfInt[7] == -1) && (Nat256.ˉ(paramArrayOfInt, aIX)))) {
      Nat.ᐝ(8, 977, paramArrayOfInt);
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
      Nat.ᐝ(8, 977, paramArrayOfInt2);
    }
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
      Nat.ᐝ(8, 977, paramArrayOfInt3);
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
    if (((Nat256.ˈ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) || ((paramArrayOfInt3[15] == -1) && (Nat.ᐝ(16, paramArrayOfInt3, bdf)))) && (Nat.ˎ(bdj.length, bdj, paramArrayOfInt3) != 0)) {
      Nat.ˎ(16, paramArrayOfInt3, bdj.length);
    }
  }
  
  public static void ͺ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if ((Nat256.ˊ(977, Nat256.ˊ(977, paramArrayOfInt1, 8, paramArrayOfInt1, 0, paramArrayOfInt2, 0), paramArrayOfInt2, 0) != 0) || ((paramArrayOfInt2[7] == -1) && (Nat256.ˉ(paramArrayOfInt2, aIX)))) {
      Nat.ᐝ(8, 977, paramArrayOfInt2);
    }
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (Nat256.ˉ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) != 0) {
      Nat.ʼ(8, 977, paramArrayOfInt3);
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
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP256K1Field
 * JD-Core Version:    0.7.0.1
 */