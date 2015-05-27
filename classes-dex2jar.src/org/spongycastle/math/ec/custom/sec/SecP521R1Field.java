package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat512;

public class SecP521R1Field
{
  static final int[] aIX = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 511 };
  
  public static void ʼ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int j = Nat.ʻ(16, paramArrayOfInt1, paramArrayOfInt2) + paramArrayOfInt1[16];
    int i;
    if (j <= 511)
    {
      i = j;
      if (j == 511)
      {
        i = j;
        if (!Nat.ˏ(16, paramArrayOfInt2, aIX)) {}
      }
    }
    else
    {
      i = j + Nat.ʾ(16, paramArrayOfInt2) & 0x1FF;
    }
    paramArrayOfInt2[16] = i;
  }
  
  public static void ʽ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (Nat.ˈ(17, paramArrayOfInt1))
    {
      Nat.ˌ(17, paramArrayOfInt2);
      return;
    }
    Nat.ˎ(17, aIX, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  protected static void ʽ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    Nat512.ʿ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3);
    int i = paramArrayOfInt1[16];
    int j = paramArrayOfInt2[16];
    paramArrayOfInt3[32] = (Nat.ˊ(16, i, paramArrayOfInt2, j, paramArrayOfInt1, paramArrayOfInt3, 16) + i * j);
  }
  
  public static void ʾ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = paramArrayOfInt1[16];
    paramArrayOfInt2[16] = ((Nat.ˊ(16, paramArrayOfInt1, i << 23, paramArrayOfInt2) | i << 1) & 0x1FF);
  }
  
  protected static void ʿ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Nat512.ι(paramArrayOfInt1, paramArrayOfInt2);
    int i = paramArrayOfInt1[16];
    paramArrayOfInt2[32] = (Nat.ˊ(16, i << 1, paramArrayOfInt1, 0, paramArrayOfInt2, 16) + i * i);
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int paramInt, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat.ċ(33);
    ʿ(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
    for (;;)
    {
      paramInt -= 1;
      if (paramInt <= 0) {
        break;
      }
      ʿ(paramArrayOfInt2, arrayOfInt);
      ͺ(arrayOfInt, paramArrayOfInt2);
    }
  }
  
  public static void ˋ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int j = Nat.ˊ(16, paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) + paramArrayOfInt1[16] + paramArrayOfInt2[16];
    int i;
    if (j <= 511)
    {
      i = j;
      if (j == 511)
      {
        i = j;
        if (!Nat.ˏ(16, paramArrayOfInt3, aIX)) {}
      }
    }
    else
    {
      i = j + Nat.ʾ(16, paramArrayOfInt3) & 0x1FF;
    }
    paramArrayOfInt3[16] = i;
  }
  
  public static void ˎ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int[] arrayOfInt = Nat.ċ(33);
    ʽ(paramArrayOfInt1, paramArrayOfInt2, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt3);
  }
  
  public static void ˑ(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt[16];
    int j = Nat.ʻ(16, i >>> 9, paramArrayOfInt) + (i & 0x1FF);
    if (j <= 511)
    {
      i = j;
      if (j == 511)
      {
        i = j;
        if (!Nat.ˏ(16, paramArrayOfInt, aIX)) {}
      }
    }
    else
    {
      i = j + Nat.ʾ(16, paramArrayOfInt) & 0x1FF;
    }
    paramArrayOfInt[16] = i;
  }
  
  public static void ͺ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = paramArrayOfInt1[32];
    int j = (Nat.ˊ(16, paramArrayOfInt1, 16, 9, i, paramArrayOfInt2, 0) >>> 23) + (i >>> 9) + Nat.ˎ(16, paramArrayOfInt1, paramArrayOfInt2);
    if (j <= 511)
    {
      i = j;
      if (j == 511)
      {
        i = j;
        if (!Nat.ˏ(16, paramArrayOfInt2, aIX)) {}
      }
    }
    else
    {
      i = j + Nat.ʾ(16, paramArrayOfInt2) & 0x1FF;
    }
    paramArrayOfInt2[16] = i;
  }
  
  public static void ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int j = Nat.ˎ(16, paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3) + paramArrayOfInt1[16] - paramArrayOfInt2[16];
    int i = j;
    if (j < 0) {
      i = j + Nat.ι(16, paramArrayOfInt3) & 0x1FF;
    }
    paramArrayOfInt3[16] = i;
  }
  
  public static void ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt = Nat.ċ(33);
    ʿ(paramArrayOfInt1, arrayOfInt);
    ͺ(arrayOfInt, paramArrayOfInt2);
  }
  
  public static int[] ﹳ(BigInteger paramBigInteger)
  {
    paramBigInteger = Nat.ᐝ(521, paramBigInteger);
    if (Nat.ˏ(17, paramBigInteger, aIX)) {
      Nat.ˌ(17, paramBigInteger);
    }
    return paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP521R1Field
 * JD-Core Version:    0.7.0.1
 */