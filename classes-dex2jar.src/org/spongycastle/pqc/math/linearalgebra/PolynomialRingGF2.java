package org.spongycastle.pqc.math.linearalgebra;

import java.io.PrintStream;

public final class PolynomialRingGF2
{
  public static int ˇ(int paramInt1, int paramInt2, int paramInt3)
  {
    int j = 0;
    int k = 0;
    int i = ᵞ(paramInt1, paramInt3);
    paramInt2 = ᵞ(paramInt2, paramInt3);
    if (paramInt2 != 0)
    {
      int m = ᙇ(paramInt3);
      for (paramInt1 = k;; paramInt1 = j)
      {
        j = paramInt1;
        if (i == 0) {
          break;
        }
        j = paramInt1;
        if ((byte)(i & 0x1) == 1) {
          j = paramInt1 ^ paramInt2;
        }
        i >>>= 1;
        paramInt1 = paramInt2 << 1;
        paramInt2 = paramInt1;
        if (paramInt1 >= 1 << m) {
          paramInt2 = paramInt1 ^ paramInt3;
        }
      }
    }
    return j;
  }
  
  public static int ᙇ(int paramInt)
  {
    int i = -1;
    while (paramInt != 0)
    {
      i += 1;
      paramInt >>>= 1;
    }
    return i;
  }
  
  public static boolean ᴧ(int paramInt)
  {
    if (paramInt == 0) {
      return false;
    }
    int k = ᙇ(paramInt);
    int j = 2;
    int i = 0;
    while (i < k >>> 1)
    {
      j = ˇ(j, j, paramInt);
      if (ᵧ(j ^ 0x2, paramInt) != 1) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static int ᴮ(int paramInt)
  {
    if (paramInt < 0)
    {
      System.err.println("The Degree is negative");
      return 0;
    }
    if (paramInt > 31)
    {
      System.err.println("The Degree is more then 31");
      return 0;
    }
    if (paramInt == 0) {
      return 1;
    }
    int i = (1 << paramInt) + 1;
    while (i < 1 << paramInt + 1)
    {
      if (ᴧ(i)) {
        return i;
      }
      i += 2;
    }
    return 0;
  }
  
  public static int ᵞ(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      System.err.println("Error: to be divided by 0");
      return 0;
    }
    while (ᙇ(paramInt1) >= ᙇ(paramInt2)) {
      paramInt1 ^= paramInt2 << ᙇ(paramInt1) - ᙇ(paramInt2);
    }
    return paramInt1;
  }
  
  public static int ᵧ(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    for (paramInt1 = paramInt2; paramInt1 != 0; paramInt1 = paramInt2)
    {
      paramInt2 = ᵞ(i, paramInt1);
      i = paramInt1;
    }
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2
 * JD-Core Version:    0.7.0.1
 */