package org.spongycastle.pqc.math.ntru.polynomial;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.pqc.math.ntru.util.Util;
import org.spongycastle.util.Arrays;

public class SparseTernaryPolynomial
  implements TernaryPolynomial
{
  private int aMJ;
  private int[] bjS;
  private int[] bjT;
  
  public SparseTernaryPolynomial(int[] paramArrayOfInt)
  {
    this.aMJ = paramArrayOfInt.length;
    this.bjS = new int[this.aMJ];
    this.bjT = new int[this.aMJ];
    int k = 0;
    int j = 0;
    int i = 0;
    while (i < this.aMJ)
    {
      int m = paramArrayOfInt[i];
      int[] arrayOfInt;
      switch (m)
      {
      default: 
        break;
      case 1: 
        arrayOfInt = this.bjS;
        m = k + 1;
        arrayOfInt[k] = i;
        k = m;
        break;
      case -1: 
        arrayOfInt = this.bjT;
        m = j + 1;
        arrayOfInt[j] = i;
        j = m;
        break;
      case 0: 
        break;
      }
      throw new IllegalArgumentException("Illegal value: " + m + ", must be one of {-1, 0, 1}");
      i += 1;
    }
    this.bjS = Arrays.copyOf(this.bjS, k);
    this.bjT = Arrays.copyOf(this.bjT, j);
  }
  
  public static SparseTernaryPolynomial ˋ(int paramInt1, int paramInt2, int paramInt3, SecureRandom paramSecureRandom)
  {
    return new SparseTernaryPolynomial(Util.ˎ(paramInt1, paramInt2, paramInt3, paramSecureRandom));
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (SparseTernaryPolynomial)paramObject;
    if (this.aMJ != paramObject.aMJ) {
      return false;
    }
    if (!Arrays.ՙ(this.bjT, paramObject.bjT)) {
      return false;
    }
    return Arrays.ՙ(this.bjS, paramObject.bjS);
  }
  
  public int hashCode()
  {
    return ((this.aMJ + 31) * 31 + Arrays.hashCode(this.bjT)) * 31 + Arrays.hashCode(this.bjS);
  }
  
  public int[] sP()
  {
    return this.bjS;
  }
  
  public int[] sQ()
  {
    return this.bjT;
  }
  
  public int size()
  {
    return this.aMJ;
  }
  
  public IntegerPolynomial ta()
  {
    int[] arrayOfInt = new int[this.aMJ];
    int i = 0;
    while (i != this.bjS.length)
    {
      arrayOfInt[this.bjS[i]] = 1;
      i += 1;
    }
    i = 0;
    while (i != this.bjT.length)
    {
      arrayOfInt[this.bjT[i]] = -1;
      i += 1;
    }
    return new IntegerPolynomial(arrayOfInt);
  }
  
  public IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial)
  {
    paramIntegerPolynomial = paramIntegerPolynomial.bjG;
    if (paramIntegerPolynomial.length != this.aMJ) {
      throw new IllegalArgumentException("Number of coefficients must be the same");
    }
    int[] arrayOfInt = new int[this.aMJ];
    int j = 0;
    int i;
    int k;
    int m;
    while (j != this.bjS.length)
    {
      i = this.bjS[j];
      i = this.aMJ - 1 - i;
      k = this.aMJ - 1;
      while (k >= 0)
      {
        arrayOfInt[k] += paramIntegerPolynomial[i];
        m = i - 1;
        i = m;
        if (m < 0) {
          i = this.aMJ - 1;
        }
        k -= 1;
      }
      j += 1;
    }
    j = 0;
    while (j != this.bjT.length)
    {
      i = this.bjT[j];
      i = this.aMJ - 1 - i;
      k = this.aMJ - 1;
      while (k >= 0)
      {
        arrayOfInt[k] -= paramIntegerPolynomial[i];
        m = i - 1;
        i = m;
        if (m < 0) {
          i = this.aMJ - 1;
        }
        k -= 1;
      }
      j += 1;
    }
    return new IntegerPolynomial(arrayOfInt);
  }
  
  public IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial, int paramInt)
  {
    paramIntegerPolynomial = ˊ(paramIntegerPolynomial);
    paramIntegerPolynomial.〳(paramInt);
    return paramIntegerPolynomial;
  }
  
  public BigIntPolynomial ˋ(BigIntPolynomial paramBigIntPolynomial)
  {
    paramBigIntPolynomial = paramBigIntPolynomial.bjA;
    if (paramBigIntPolynomial.length != this.aMJ) {
      throw new IllegalArgumentException("Number of coefficients must be the same");
    }
    BigInteger[] arrayOfBigInteger = new BigInteger[this.aMJ];
    int i = 0;
    while (i < this.aMJ)
    {
      arrayOfBigInteger[i] = BigInteger.ZERO;
      i += 1;
    }
    int j = 0;
    int k;
    int m;
    while (j != this.bjS.length)
    {
      i = this.bjS[j];
      i = this.aMJ - 1 - i;
      k = this.aMJ - 1;
      while (k >= 0)
      {
        arrayOfBigInteger[k] = arrayOfBigInteger[k].add(paramBigIntPolynomial[i]);
        m = i - 1;
        i = m;
        if (m < 0) {
          i = this.aMJ - 1;
        }
        k -= 1;
      }
      j += 1;
    }
    j = 0;
    while (j != this.bjT.length)
    {
      i = this.bjT[j];
      i = this.aMJ - 1 - i;
      k = this.aMJ - 1;
      while (k >= 0)
      {
        arrayOfBigInteger[k] = arrayOfBigInteger[k].subtract(paramBigIntPolynomial[i]);
        m = i - 1;
        i = m;
        if (m < 0) {
          i = this.aMJ - 1;
        }
        k -= 1;
      }
      j += 1;
    }
    return new BigIntPolynomial(arrayOfBigInteger);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.SparseTernaryPolynomial
 * JD-Core Version:    0.7.0.1
 */