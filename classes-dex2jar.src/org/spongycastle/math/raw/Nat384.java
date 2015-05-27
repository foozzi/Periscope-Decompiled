package org.spongycastle.math.raw;

public abstract class Nat384
{
  public static void ʿ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    Nat192.ʿ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3);
    Nat192.ˋ(paramArrayOfInt1, 6, paramArrayOfInt2, 6, paramArrayOfInt3, 12);
    int j = Nat192.ˊ(paramArrayOfInt3, 6, paramArrayOfInt3, 12);
    int k = Nat192.ˊ(paramArrayOfInt3, 18, paramArrayOfInt3, 12, j + Nat192.ˊ(paramArrayOfInt3, 0, paramArrayOfInt3, 6, 0));
    int[] arrayOfInt1 = Nat192.qv();
    int[] arrayOfInt2 = Nat192.qv();
    int i;
    if (Nat192.ˊ(paramArrayOfInt1, 6, paramArrayOfInt1, 0, arrayOfInt1, 0) != Nat192.ˊ(paramArrayOfInt2, 6, paramArrayOfInt2, 0, arrayOfInt2, 0)) {
      i = 1;
    } else {
      i = 0;
    }
    paramArrayOfInt1 = Nat192.qw();
    Nat192.ʿ(arrayOfInt1, arrayOfInt2, paramArrayOfInt1);
    if (i != 0) {
      i = Nat.ᐝ(12, paramArrayOfInt1, 0, paramArrayOfInt3, 6);
    } else {
      i = Nat.ʻ(12, paramArrayOfInt1, 0, paramArrayOfInt3, 6);
    }
    Nat.ˊ(24, j + k + i, paramArrayOfInt3, 18);
  }
  
  public static void ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Nat192.ι(paramArrayOfInt1, paramArrayOfInt2);
    Nat192.ˎ(paramArrayOfInt1, 6, paramArrayOfInt2, 12);
    int i = Nat192.ˊ(paramArrayOfInt2, 6, paramArrayOfInt2, 12);
    int j = Nat192.ˊ(paramArrayOfInt2, 18, paramArrayOfInt2, 12, i + Nat192.ˊ(paramArrayOfInt2, 0, paramArrayOfInt2, 6, 0));
    int[] arrayOfInt = Nat192.qv();
    Nat192.ˊ(paramArrayOfInt1, 6, paramArrayOfInt1, 0, arrayOfInt, 0);
    paramArrayOfInt1 = Nat192.qw();
    Nat192.ι(arrayOfInt, paramArrayOfInt1);
    Nat.ˊ(24, i + j + Nat.ʻ(12, paramArrayOfInt1, 0, paramArrayOfInt2, 6), paramArrayOfInt2, 18);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.raw.Nat384
 * JD-Core Version:    0.7.0.1
 */