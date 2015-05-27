package org.spongycastle.pqc.math.linearalgebra;

public final class IntUtils
{
  public static boolean equals(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (paramArrayOfInt1.length != paramArrayOfInt2.length) {
      return false;
    }
    boolean bool2 = true;
    int i = paramArrayOfInt1.length - 1;
    while (i >= 0)
    {
      boolean bool1;
      if (paramArrayOfInt1[i] == paramArrayOfInt2[i]) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      bool2 &= bool1;
      i -= 1;
    }
    return bool2;
  }
  
  public static int[] י(int[] paramArrayOfInt)
  {
    int[] arrayOfInt = new int[paramArrayOfInt.length];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, paramArrayOfInt.length);
    return arrayOfInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.IntUtils
 * JD-Core Version:    0.7.0.1
 */