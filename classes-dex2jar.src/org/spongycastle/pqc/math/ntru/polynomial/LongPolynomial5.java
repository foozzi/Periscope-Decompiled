package org.spongycastle.pqc.math.ntru.polynomial;

import java.lang.reflect.Array;
import org.spongycastle.util.Arrays;

public class LongPolynomial5
{
  private long[] bjL;
  private int bjM;
  
  public LongPolynomial5(IntegerPolynomial paramIntegerPolynomial)
  {
    this.bjM = paramIntegerPolynomial.bjG.length;
    this.bjL = new long[(this.bjM + 4) / 5];
    int k = 0;
    int i = 0;
    int j = 0;
    while (j < this.bjM)
    {
      long[] arrayOfLong = this.bjL;
      arrayOfLong[k] |= paramIntegerPolynomial.bjG[j] << i;
      int n = i + 12;
      int m = k;
      i = n;
      if (n >= 60)
      {
        i = 0;
        m = k + 1;
      }
      j += 1;
      k = m;
    }
  }
  
  private LongPolynomial5(long[] paramArrayOfLong, int paramInt)
  {
    this.bjL = paramArrayOfLong;
    this.bjM = paramInt;
  }
  
  public IntegerPolynomial ta()
  {
    int[] arrayOfInt = new int[this.bjM];
    int k = 0;
    int i = 0;
    int j = 0;
    while (j < this.bjM)
    {
      arrayOfInt[j] = ((int)(this.bjL[k] >> i & 0x7FF));
      int n = i + 12;
      int m = k;
      i = n;
      if (n >= 60)
      {
        i = 0;
        m = k + 1;
      }
      j += 1;
      k = m;
    }
    return new IntegerPolynomial(arrayOfInt);
  }
  
  public LongPolynomial5 ˊ(TernaryPolynomial paramTernaryPolynomial)
  {
    int i = this.bjL.length;
    int j = (paramTernaryPolynomial.size() + 4) / 5;
    long[][] arrayOfLong = (long[][])Array.newInstance(Long.TYPE, new int[] { 5, i + j - 1 });
    int[] arrayOfInt = paramTernaryPolynomial.sP();
    i = 0;
    int m;
    while (i != arrayOfInt.length)
    {
      j = arrayOfInt[i];
      k = j / 5;
      m = j - k * 5;
      j = 0;
      while (j < this.bjL.length)
      {
        arrayOfLong[m][k] = (arrayOfLong[m][k] + this.bjL[j] & 0xFF7FF7FF);
        k += 1;
        j += 1;
      }
      i += 1;
    }
    paramTernaryPolynomial = paramTernaryPolynomial.sQ();
    i = 0;
    while (i != paramTernaryPolynomial.length)
    {
      j = paramTernaryPolynomial[i];
      k = j / 5;
      m = j - k * 5;
      j = 0;
      while (j < this.bjL.length)
      {
        arrayOfLong[m][k] = (arrayOfLong[m][k] + 576601524159907840L - this.bjL[j] & 0xFF7FF7FF);
        k += 1;
        j += 1;
      }
      i += 1;
    }
    paramTernaryPolynomial = Arrays.copyOf(arrayOfLong[0], arrayOfLong[0].length + 1);
    i = 1;
    long l1;
    while (i <= 4)
    {
      k = i * 12;
      m = 60 - k;
      int n = arrayOfLong[i].length;
      j = 0;
      while (j < n)
      {
        l1 = arrayOfLong[i][j];
        long l2 = arrayOfLong[i][j];
        paramTernaryPolynomial[j] = (paramTernaryPolynomial[j] + ((l2 & (1L << m) - 1L) << k) & 0xFF7FF7FF);
        int i1 = j + 1;
        paramTernaryPolynomial[i1] = (paramTernaryPolynomial[i1] + (l1 >> m) & 0xFF7FF7FF);
        j += 1;
      }
      i += 1;
    }
    int k = this.bjM;
    i = this.bjL.length - 1;
    while (i < paramTernaryPolynomial.length)
    {
      if (i == this.bjL.length - 1)
      {
        if (this.bjM == 5) {
          l1 = 0L;
        } else {
          l1 = paramTernaryPolynomial[i] >> k % 5 * 12;
        }
        j = 0;
      }
      else
      {
        l1 = paramTernaryPolynomial[i];
        j = i * 5 - this.bjM;
      }
      m = j / 5;
      j -= m * 5;
      paramTernaryPolynomial[m] = (paramTernaryPolynomial[m] + (l1 << j * 12) & 0xFF7FF7FF);
      m += 1;
      if (m < this.bjL.length) {
        paramTernaryPolynomial[m] = (paramTernaryPolynomial[m] + (l1 >> (5 - j) * 12) & 0xFF7FF7FF);
      }
      i += 1;
    }
    return new LongPolynomial5(paramTernaryPolynomial, this.bjM);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.LongPolynomial5
 * JD-Core Version:    0.7.0.1
 */