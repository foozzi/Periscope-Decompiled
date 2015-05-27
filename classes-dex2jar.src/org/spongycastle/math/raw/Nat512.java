package org.spongycastle.math.raw;

public abstract class Nat512
{
  public static void ʿ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    Nat256.ʿ(paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3);
    Nat256.ˋ(paramArrayOfInt1, 8, paramArrayOfInt2, 8, paramArrayOfInt3, 16);
    int j = Nat256.ˊ(paramArrayOfInt3, 8, paramArrayOfInt3, 16);
    int k = Nat256.ˊ(paramArrayOfInt3, 24, paramArrayOfInt3, 16, j + Nat256.ˊ(paramArrayOfInt3, 0, paramArrayOfInt3, 8, 0));
    int[] arrayOfInt1 = Nat256.qv();
    int[] arrayOfInt2 = Nat256.qv();
    int i;
    if (Nat256.ˊ(paramArrayOfInt1, 8, paramArrayOfInt1, 0, arrayOfInt1, 0) != Nat256.ˊ(paramArrayOfInt2, 8, paramArrayOfInt2, 0, arrayOfInt2, 0)) {
      i = 1;
    } else {
      i = 0;
    }
    paramArrayOfInt1 = Nat256.qw();
    Nat256.ʿ(arrayOfInt1, arrayOfInt2, paramArrayOfInt1);
    if (i != 0) {
      i = Nat.ᐝ(16, paramArrayOfInt1, 0, paramArrayOfInt3, 8);
    } else {
      i = Nat.ʻ(16, paramArrayOfInt1, 0, paramArrayOfInt3, 8);
    }
    Nat.ˊ(32, j + k + i, paramArrayOfInt3, 24);
  }
  
  public static void ι(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Nat256.ι(paramArrayOfInt1, paramArrayOfInt2);
    Nat256.ˎ(paramArrayOfInt1, 8, paramArrayOfInt2, 16);
    int i = Nat256.ˊ(paramArrayOfInt2, 8, paramArrayOfInt2, 16);
    int j = Nat256.ˊ(paramArrayOfInt2, 24, paramArrayOfInt2, 16, i + Nat256.ˊ(paramArrayOfInt2, 0, paramArrayOfInt2, 8, 0));
    int[] arrayOfInt = Nat256.qv();
    Nat256.ˊ(paramArrayOfInt1, 8, paramArrayOfInt1, 0, arrayOfInt, 0);
    paramArrayOfInt1 = Nat256.qw();
    Nat256.ι(arrayOfInt, paramArrayOfInt1);
    Nat.ˊ(32, i + j + Nat.ʻ(16, paramArrayOfInt1, 0, paramArrayOfInt2, 8), paramArrayOfInt2, 24);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.raw.Nat512
 * JD-Core Version:    0.7.0.1
 */