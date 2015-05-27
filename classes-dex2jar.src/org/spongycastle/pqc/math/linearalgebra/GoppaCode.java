package org.spongycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;

public final class GoppaCode
{
  public static GF2Matrix ˊ(GF2mField paramGF2mField, PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    int m = paramGF2mField.qs();
    int n = 1 << m;
    int i1 = paramPolynomialGF2mSmallM.qs();
    int[][] arrayOfInt1 = (int[][])Array.newInstance(Integer.TYPE, new int[] { i1, n });
    int[][] arrayOfInt2 = (int[][])Array.newInstance(Integer.TYPE, new int[] { i1, n });
    int i = 0;
    while (i < n)
    {
      arrayOfInt2[0][i] = paramGF2mField.ܕ(paramPolynomialGF2mSmallM.ᒦ(i));
      i += 1;
    }
    i = 1;
    int j;
    while (i < i1)
    {
      j = 0;
      while (j < n)
      {
        arrayOfInt2[i][j] = paramGF2mField.ᕽ(arrayOfInt2[(i - 1)][j], j);
        j += 1;
      }
      i += 1;
    }
    i = 0;
    int k;
    while (i < i1)
    {
      j = 0;
      while (j < n)
      {
        k = 0;
        while (k <= i)
        {
          arrayOfInt1[i][j] = paramGF2mField.ᕑ(arrayOfInt1[i][j], paramGF2mField.ᕽ(arrayOfInt2[k][j], paramPolynomialGF2mSmallM.Ꮣ(i1 + k - i)));
          k += 1;
        }
        j += 1;
      }
      i += 1;
    }
    paramGF2mField = (int[][])Array.newInstance(Integer.TYPE, new int[] { i1 * m, n + 31 >>> 5 });
    i = 0;
    while (i < n)
    {
      int i2 = i >>> 5;
      j = 0;
      while (j < i1)
      {
        int i3 = arrayOfInt1[j][i];
        k = 0;
        while (k < m)
        {
          if ((i3 >>> k & 0x1) != 0)
          {
            paramPolynomialGF2mSmallM = paramGF2mField[((j + 1) * m - k - 1)];
            paramPolynomialGF2mSmallM[i2] ^= 1 << (i & 0x1F);
          }
          k += 1;
        }
        j += 1;
      }
      i += 1;
    }
    return new GF2Matrix(n, paramGF2mField);
  }
  
  public static GF2Vector ˊ(GF2Vector paramGF2Vector, GF2mField paramGF2mField, PolynomialGF2mSmallM paramPolynomialGF2mSmallM, PolynomialGF2mSmallM[] paramArrayOfPolynomialGF2mSmallM)
  {
    int j = 1 << paramGF2mField.qs();
    GF2Vector localGF2Vector = new GF2Vector(j);
    if (!paramGF2Vector.isZero())
    {
      paramGF2Vector = new PolynomialGF2mSmallM(paramGF2Vector.ˊ(paramGF2mField)).ᐝ(paramPolynomialGF2mSmallM).ᒨ(1).ˊ(paramArrayOfPolynomialGF2mSmallM).ʻ(paramPolynomialGF2mSmallM);
      paramGF2Vector = paramGF2Vector[0].ˎ(paramGF2Vector[0]).ˊ(paramGF2Vector[1].ˎ(paramGF2Vector[1]).ᘇ(1));
      paramGF2Vector = paramGF2Vector.ᒫ(paramGF2mField.ܕ(paramGF2Vector.sF()));
      int i = 0;
      while (i < j)
      {
        if (paramGF2Vector.ᒦ(i) == 0) {
          localGF2Vector.ه(i);
        }
        i += 1;
      }
    }
    return localGF2Vector;
  }
  
  public static MaMaPe ˊ(GF2Matrix paramGF2Matrix, SecureRandom paramSecureRandom)
  {
    int j = paramGF2Matrix.getNumColumns();
    Object localObject1 = null;
    Permutation localPermutation;
    GF2Matrix localGF2Matrix2;
    GF2Matrix localGF2Matrix3;
    int i;
    Object localObject2;
    do
    {
      localPermutation = new Permutation(j, paramSecureRandom);
      localGF2Matrix2 = (GF2Matrix)paramGF2Matrix.ˊ(localPermutation);
      localGF2Matrix3 = localGF2Matrix2.sb();
      i = 1;
      try
      {
        GF2Matrix localGF2Matrix1 = (GF2Matrix)localGF2Matrix3.sf();
      }
      catch (ArithmeticException localArithmeticException)
      {
        i = 0;
        localObject2 = localObject1;
      }
      localObject1 = localObject2;
    } while (i == 0);
    return new MaMaPe(localGF2Matrix3, ((GF2Matrix)localObject2.ˊ(localGF2Matrix2)).sd(), localPermutation);
  }
  
  public static class MaMaPe
  {
    private Permutation bfZ;
    private GF2Matrix bga;
    private GF2Matrix bjm;
    
    public MaMaPe(GF2Matrix paramGF2Matrix1, GF2Matrix paramGF2Matrix2, Permutation paramPermutation)
    {
      this.bjm = paramGF2Matrix1;
      this.bga = paramGF2Matrix2;
      this.bfZ = paramPermutation;
    }
    
    public GF2Matrix sB()
    {
      return this.bga;
    }
    
    public Permutation sC()
    {
      return this.bfZ;
    }
  }
  
  public static class MatrixSet {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GoppaCode
 * JD-Core Version:    0.7.0.1
 */