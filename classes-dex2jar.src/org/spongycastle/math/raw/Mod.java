package org.spongycastle.math.raw;

import java.util.Random;

public abstract class Mod
{
  private static int ˊ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int[] paramArrayOfInt3, int paramInt2)
  {
    int k = paramArrayOfInt1.length;
    int i = 0;
    while (paramArrayOfInt2[0] == 0)
    {
      Nat.ᐝ(paramInt1, paramArrayOfInt2, 0);
      i += 32;
    }
    int m = ﾍ(paramArrayOfInt2[0]);
    int j = i;
    if (m > 0)
    {
      Nat.ˋ(paramInt1, paramArrayOfInt2, m, 0);
      j = i + m;
    }
    paramInt1 = 0;
    i = paramInt2;
    paramInt2 = paramInt1;
    while (paramInt2 < j)
    {
      paramInt1 = i;
      if ((paramArrayOfInt3[0] & 0x1) != 0) {
        if (i < 0) {
          paramInt1 = i + Nat.ˎ(k, paramArrayOfInt1, paramArrayOfInt3);
        } else {
          paramInt1 = i + Nat.ʼ(k, paramArrayOfInt1, paramArrayOfInt3);
        }
      }
      Nat.ˏ(k, paramArrayOfInt3, paramInt1);
      paramInt2 += 1;
      i = paramInt1;
    }
    return i;
  }
  
  private static void ˊ(int[] paramArrayOfInt1, int paramInt, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    if (paramInt < 0)
    {
      Nat.ˊ(paramArrayOfInt1.length, paramArrayOfInt2, paramArrayOfInt1, paramArrayOfInt3);
      return;
    }
    System.arraycopy(paramArrayOfInt2, 0, paramArrayOfInt3, 0, paramArrayOfInt1.length);
  }
  
  public static void ͺ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int m = paramArrayOfInt1.length;
    if (Nat.ˈ(m, paramArrayOfInt2)) {
      throw new IllegalArgumentException("'x' cannot be 0");
    }
    if (Nat.ʿ(m, paramArrayOfInt2))
    {
      System.arraycopy(paramArrayOfInt2, 0, paramArrayOfInt3, 0, m);
      return;
    }
    paramArrayOfInt2 = Nat.ͺ(m, paramArrayOfInt2);
    int[] arrayOfInt1 = Nat.ċ(m);
    arrayOfInt1[0] = 1;
    int i = 0;
    if ((paramArrayOfInt2[0] & 0x1) == 0) {
      i = ˊ(paramArrayOfInt1, paramArrayOfInt2, m, arrayOfInt1, 0);
    }
    if (Nat.ʿ(m, paramArrayOfInt2))
    {
      ˊ(paramArrayOfInt1, i, arrayOfInt1, paramArrayOfInt3);
      return;
    }
    int[] arrayOfInt2 = Nat.ͺ(m, paramArrayOfInt1);
    int[] arrayOfInt3 = Nat.ċ(m);
    int j = 0;
    int k = m;
    int n;
    do
    {
      do
      {
        while ((paramArrayOfInt2[(k - 1)] == 0) && (arrayOfInt2[(k - 1)] == 0)) {
          k -= 1;
        }
        if (!Nat.ᐝ(k, paramArrayOfInt2, arrayOfInt2)) {
          break;
        }
        Nat.ʼ(k, arrayOfInt2, paramArrayOfInt2);
        n = ˊ(paramArrayOfInt1, paramArrayOfInt2, k, arrayOfInt1, i + (Nat.ʼ(m, arrayOfInt3, arrayOfInt1) - j));
        i = n;
      } while (!Nat.ʿ(k, paramArrayOfInt2));
      ˊ(paramArrayOfInt1, n, arrayOfInt1, paramArrayOfInt3);
      return;
      Nat.ʼ(k, paramArrayOfInt2, arrayOfInt2);
      n = ˊ(paramArrayOfInt1, arrayOfInt2, k, arrayOfInt3, j + (Nat.ʼ(m, arrayOfInt1, arrayOfInt3) - i));
      j = n;
    } while (!Nat.ʿ(k, arrayOfInt2));
    ˊ(paramArrayOfInt1, n, arrayOfInt3, paramArrayOfInt3);
  }
  
  public static int[] ᐧ(int[] paramArrayOfInt)
  {
    int j = paramArrayOfInt.length;
    Random localRandom = new Random();
    int[] arrayOfInt = Nat.ċ(j);
    int i = paramArrayOfInt[(j - 1)];
    i |= i >>> 1;
    i |= i >>> 2;
    i |= i >>> 4;
    int k = i | i >>> 8;
    do
    {
      i = 0;
      while (i != j)
      {
        arrayOfInt[i] = localRandom.nextInt();
        i += 1;
      }
      i = j - 1;
      arrayOfInt[i] &= (k | k >>> 16);
    } while (Nat.ᐝ(j, arrayOfInt, paramArrayOfInt));
    return arrayOfInt;
  }
  
  private static int ﾍ(int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while ((i & 0x1) == 0)
    {
      i >>>= 1;
      paramInt += 1;
    }
    return paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.raw.Mod
 * JD-Core Version:    0.7.0.1
 */