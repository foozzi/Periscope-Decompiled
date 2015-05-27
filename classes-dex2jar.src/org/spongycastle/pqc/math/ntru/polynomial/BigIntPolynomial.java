package org.spongycastle.pqc.math.ntru.polynomial;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.spongycastle.util.Arrays;

public class BigIntPolynomial
{
  private static final double bjz = Math.log10(2.0D);
  BigInteger[] bjA;
  
  BigIntPolynomial(int paramInt)
  {
    this.bjA = new BigInteger[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      this.bjA[i] = Constants.bjB;
      i += 1;
    }
  }
  
  public BigIntPolynomial(IntegerPolynomial paramIntegerPolynomial)
  {
    this.bjA = new BigInteger[paramIntegerPolynomial.bjG.length];
    int i = 0;
    while (i < this.bjA.length)
    {
      this.bjA[i] = BigInteger.valueOf(paramIntegerPolynomial.bjG[i]);
      i += 1;
    }
  }
  
  BigIntPolynomial(BigInteger[] paramArrayOfBigInteger)
  {
    this.bjA = paramArrayOfBigInteger;
  }
  
  private BigInteger sN()
  {
    Object localObject1 = this.bjA[0].abs();
    int i = 1;
    while (i < this.bjA.length)
    {
      BigInteger localBigInteger = this.bjA[i].abs();
      Object localObject2 = localObject1;
      if (localBigInteger.compareTo((BigInteger)localObject1) > 0) {
        localObject2 = localBigInteger;
      }
      i += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  private BigIntPolynomial ˎ(BigIntPolynomial paramBigIntPolynomial)
  {
    Object localObject1 = this.bjA;
    Object localObject2 = paramBigIntPolynomial.bjA;
    int i = paramBigIntPolynomial.bjA.length;
    if (i <= 1)
    {
      localObject1 = Arrays.ˊ(this.bjA);
      i = 0;
      while (i < this.bjA.length)
      {
        localObject1[i] = localObject1[i].multiply(paramBigIntPolynomial.bjA[0]);
        i += 1;
      }
      return new BigIntPolynomial((BigInteger[])localObject1);
    }
    int j = i / 2;
    paramBigIntPolynomial = new BigIntPolynomial(Arrays.ˊ((BigInteger[])localObject1, j));
    localObject1 = new BigIntPolynomial(Arrays.ˊ((BigInteger[])localObject1, j, i));
    BigIntPolynomial localBigIntPolynomial2 = new BigIntPolynomial(Arrays.ˊ((BigInteger[])localObject2, j));
    BigIntPolynomial localBigIntPolynomial3 = new BigIntPolynomial(Arrays.ˊ((BigInteger[])localObject2, j, i));
    localObject2 = (BigIntPolynomial)paramBigIntPolynomial.clone();
    ((BigIntPolynomial)localObject2).ˏ((BigIntPolynomial)localObject1);
    BigIntPolynomial localBigIntPolynomial1 = (BigIntPolynomial)localBigIntPolynomial2.clone();
    localBigIntPolynomial1.ˏ(localBigIntPolynomial3);
    paramBigIntPolynomial = paramBigIntPolynomial.ˎ(localBigIntPolynomial2);
    localObject1 = ((BigIntPolynomial)localObject1).ˎ(localBigIntPolynomial3);
    localObject2 = ((BigIntPolynomial)localObject2).ˎ(localBigIntPolynomial1);
    ((BigIntPolynomial)localObject2).ᐝ(paramBigIntPolynomial);
    ((BigIntPolynomial)localObject2).ᐝ((BigIntPolynomial)localObject1);
    localBigIntPolynomial1 = new BigIntPolynomial(i * 2 - 1);
    i = 0;
    while (i < paramBigIntPolynomial.bjA.length)
    {
      localBigIntPolynomial1.bjA[i] = paramBigIntPolynomial.bjA[i];
      i += 1;
    }
    i = 0;
    while (i < ((BigIntPolynomial)localObject2).bjA.length)
    {
      localBigIntPolynomial1.bjA[(j + i)] = localBigIntPolynomial1.bjA[(j + i)].add(localObject2.bjA[i]);
      i += 1;
    }
    i = 0;
    while (i < ((BigIntPolynomial)localObject1).bjA.length)
    {
      localBigIntPolynomial1.bjA[(j * 2 + i)] = localBigIntPolynomial1.bjA[(j * 2 + i)].add(localObject1.bjA[i]);
      i += 1;
    }
    return localBigIntPolynomial1;
  }
  
  public Object clone()
  {
    return new BigIntPolynomial((BigInteger[])this.bjA.clone());
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
    paramObject = (BigIntPolynomial)paramObject;
    return Arrays.ˋ(this.bjA, paramObject.bjA);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(this.bjA) + 31;
  }
  
  public int sM()
  {
    return (int)(sN().bitLength() * bjz) + 1;
  }
  
  public BigDecimalPolynomial ˊ(BigDecimal paramBigDecimal, int paramInt)
  {
    int i = (int)(sN().bitLength() * bjz);
    paramBigDecimal = Constants.bjD.divide(paramBigDecimal, i + 1 + paramInt + 1, 6);
    BigDecimalPolynomial localBigDecimalPolynomial = new BigDecimalPolynomial(this.bjA.length);
    i = 0;
    while (i < this.bjA.length)
    {
      localBigDecimalPolynomial.bjy[i] = new BigDecimal(this.bjA[i]).multiply(paramBigDecimal).setScale(paramInt, 6);
      i += 1;
    }
    return localBigDecimalPolynomial;
  }
  
  public BigIntPolynomial ˋ(BigIntPolynomial paramBigIntPolynomial)
  {
    int j = this.bjA.length;
    if (paramBigIntPolynomial.bjA.length != j) {
      throw new IllegalArgumentException("Number of coefficients must be the same");
    }
    paramBigIntPolynomial = ˎ(paramBigIntPolynomial);
    if (paramBigIntPolynomial.bjA.length > j)
    {
      int i = j;
      while (i < paramBigIntPolynomial.bjA.length)
      {
        paramBigIntPolynomial.bjA[(i - j)] = paramBigIntPolynomial.bjA[(i - j)].add(paramBigIntPolynomial.bjA[i]);
        i += 1;
      }
      paramBigIntPolynomial.bjA = Arrays.ˊ(paramBigIntPolynomial.bjA, j);
    }
    return paramBigIntPolynomial;
  }
  
  public void ˏ(BigIntPolynomial paramBigIntPolynomial)
  {
    if (paramBigIntPolynomial.bjA.length > this.bjA.length)
    {
      i = this.bjA.length;
      this.bjA = Arrays.ˊ(this.bjA, paramBigIntPolynomial.bjA.length);
      while (i < this.bjA.length)
      {
        this.bjA[i] = Constants.bjB;
        i += 1;
      }
    }
    int i = 0;
    while (i < paramBigIntPolynomial.bjA.length)
    {
      this.bjA[i] = this.bjA[i].add(paramBigIntPolynomial.bjA[i]);
      i += 1;
    }
  }
  
  public void י(BigInteger paramBigInteger)
  {
    int i = 0;
    while (i < this.bjA.length)
    {
      this.bjA[i] = this.bjA[i].multiply(paramBigInteger);
      i += 1;
    }
  }
  
  public void ٴ(BigInteger paramBigInteger)
  {
    BigInteger localBigInteger2 = paramBigInteger.add(Constants.bjC).divide(BigInteger.valueOf(2L));
    int i = 0;
    while (i < this.bjA.length)
    {
      BigInteger[] arrayOfBigInteger = this.bjA;
      BigInteger localBigInteger1;
      if (this.bjA[i].compareTo(Constants.bjB) > 0) {
        localBigInteger1 = this.bjA[i].add(localBigInteger2);
      } else {
        localBigInteger1 = this.bjA[i].add(localBigInteger2.negate());
      }
      arrayOfBigInteger[i] = localBigInteger1;
      this.bjA[i] = this.bjA[i].divide(paramBigInteger);
      i += 1;
    }
  }
  
  public void ᐝ(BigIntPolynomial paramBigIntPolynomial)
  {
    if (paramBigIntPolynomial.bjA.length > this.bjA.length)
    {
      i = this.bjA.length;
      this.bjA = Arrays.ˊ(this.bjA, paramBigIntPolynomial.bjA.length);
      while (i < this.bjA.length)
      {
        this.bjA[i] = Constants.bjB;
        i += 1;
      }
    }
    int i = 0;
    while (i < paramBigIntPolynomial.bjA.length)
    {
      this.bjA[i] = this.bjA[i].subtract(paramBigIntPolynomial.bjA[i]);
      i += 1;
    }
  }
  
  public void ᴵ(BigInteger paramBigInteger)
  {
    int i = 0;
    while (i < this.bjA.length)
    {
      this.bjA[i] = this.bjA[i].mod(paramBigInteger);
      i += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.BigIntPolynomial
 * JD-Core Version:    0.7.0.1
 */