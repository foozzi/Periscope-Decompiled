package org.spongycastle.pqc.math.ntru.polynomial;

import java.security.SecureRandom;
import org.spongycastle.pqc.math.ntru.util.Util;
import org.spongycastle.util.Arrays;

public class DenseTernaryPolynomial
  extends IntegerPolynomial
  implements TernaryPolynomial
{
  public DenseTernaryPolynomial(IntegerPolynomial paramIntegerPolynomial)
  {
    this(paramIntegerPolynomial.bjG);
  }
  
  public DenseTernaryPolynomial(int[] paramArrayOfInt)
  {
    super(paramArrayOfInt);
    sO();
  }
  
  private void sO()
  {
    int i = 0;
    while (i != this.bjG.length)
    {
      int j = this.bjG[i];
      if ((j < -1) || (j > 1)) {
        throw new IllegalStateException("Illegal value: " + j + ", must be one of {-1, 0, 1}");
      }
      i += 1;
    }
  }
  
  public static DenseTernaryPolynomial ˊ(int paramInt1, int paramInt2, int paramInt3, SecureRandom paramSecureRandom)
  {
    return new DenseTernaryPolynomial(Util.ˎ(paramInt1, paramInt2, paramInt3, paramSecureRandom));
  }
  
  public int[] sP()
  {
    int m = this.bjG.length;
    int[] arrayOfInt = new int[m];
    int i = 0;
    int j = 0;
    while (j < m)
    {
      int k = i;
      if (this.bjG[j] == 1)
      {
        k = i + 1;
        arrayOfInt[i] = j;
      }
      j += 1;
      i = k;
    }
    return Arrays.copyOf(arrayOfInt, i);
  }
  
  public int[] sQ()
  {
    int m = this.bjG.length;
    int[] arrayOfInt = new int[m];
    int i = 0;
    int j = 0;
    while (j < m)
    {
      int k = i;
      if (this.bjG[j] == -1)
      {
        k = i + 1;
        arrayOfInt[i] = j;
      }
      j += 1;
      i = k;
    }
    return Arrays.copyOf(arrayOfInt, i);
  }
  
  public int size()
  {
    return this.bjG.length;
  }
  
  public IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial, int paramInt)
  {
    if (paramInt == 2048)
    {
      paramIntegerPolynomial = (IntegerPolynomial)paramIntegerPolynomial.clone();
      paramIntegerPolynomial.ẋ(2048);
      return new LongPolynomial5(paramIntegerPolynomial).ˊ(this).ta();
    }
    return super.ˊ(paramIntegerPolynomial, paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial
 * JD-Core Version:    0.7.0.1
 */