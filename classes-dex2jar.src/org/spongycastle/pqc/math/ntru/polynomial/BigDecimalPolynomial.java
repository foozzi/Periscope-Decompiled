package org.spongycastle.pqc.math.ntru.polynomial;

import java.math.BigDecimal;

public class BigDecimalPolynomial
{
  private static final BigDecimal ZERO = new BigDecimal("0");
  private static final BigDecimal bjx = new BigDecimal("0.5");
  BigDecimal[] bjy;
  
  BigDecimalPolynomial(int paramInt)
  {
    this.bjy = new BigDecimal[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      this.bjy[i] = ZERO;
      i += 1;
    }
  }
  
  public BigDecimalPolynomial(BigIntPolynomial paramBigIntPolynomial)
  {
    int j = paramBigIntPolynomial.bjA.length;
    this.bjy = new BigDecimal[j];
    int i = 0;
    while (i < j)
    {
      this.bjy[i] = new BigDecimal(paramBigIntPolynomial.bjA[i]);
      i += 1;
    }
  }
  
  BigDecimalPolynomial(BigDecimal[] paramArrayOfBigDecimal)
  {
    this.bjy = paramArrayOfBigDecimal;
  }
  
  private BigDecimal[] ˊ(BigDecimal[] paramArrayOfBigDecimal, int paramInt)
  {
    BigDecimal[] arrayOfBigDecimal = new BigDecimal[paramInt];
    if (paramArrayOfBigDecimal.length < paramInt) {
      paramInt = paramArrayOfBigDecimal.length;
    }
    System.arraycopy(paramArrayOfBigDecimal, 0, arrayOfBigDecimal, 0, paramInt);
    return arrayOfBigDecimal;
  }
  
  private BigDecimal[] ˊ(BigDecimal[] paramArrayOfBigDecimal, int paramInt1, int paramInt2)
  {
    int i = paramInt2 - paramInt1;
    BigDecimal[] arrayOfBigDecimal = new BigDecimal[paramInt2 - paramInt1];
    if (paramArrayOfBigDecimal.length - paramInt1 < i) {
      paramInt2 = paramArrayOfBigDecimal.length - paramInt1;
    } else {
      paramInt2 = i;
    }
    System.arraycopy(paramArrayOfBigDecimal, paramInt1, arrayOfBigDecimal, 0, paramInt2);
    return arrayOfBigDecimal;
  }
  
  private BigDecimalPolynomial ˋ(BigDecimalPolynomial paramBigDecimalPolynomial)
  {
    Object localObject1 = this.bjy;
    Object localObject2 = paramBigDecimalPolynomial.bjy;
    int i = paramBigDecimalPolynomial.bjy.length;
    if (i <= 1)
    {
      localObject1 = (BigDecimal[])this.bjy.clone();
      i = 0;
      while (i < this.bjy.length)
      {
        localObject1[i] = localObject1[i].multiply(paramBigDecimalPolynomial.bjy[0]);
        i += 1;
      }
      return new BigDecimalPolynomial((BigDecimal[])localObject1);
    }
    int j = i / 2;
    paramBigDecimalPolynomial = new BigDecimalPolynomial(ˊ((BigDecimal[])localObject1, j));
    localObject1 = new BigDecimalPolynomial(ˊ((BigDecimal[])localObject1, j, i));
    BigDecimalPolynomial localBigDecimalPolynomial2 = new BigDecimalPolynomial(ˊ((BigDecimal[])localObject2, j));
    BigDecimalPolynomial localBigDecimalPolynomial3 = new BigDecimalPolynomial(ˊ((BigDecimal[])localObject2, j, i));
    localObject2 = (BigDecimalPolynomial)paramBigDecimalPolynomial.clone();
    ((BigDecimalPolynomial)localObject2).ˎ((BigDecimalPolynomial)localObject1);
    BigDecimalPolynomial localBigDecimalPolynomial1 = (BigDecimalPolynomial)localBigDecimalPolynomial2.clone();
    localBigDecimalPolynomial1.ˎ(localBigDecimalPolynomial3);
    paramBigDecimalPolynomial = paramBigDecimalPolynomial.ˋ(localBigDecimalPolynomial2);
    localObject1 = ((BigDecimalPolynomial)localObject1).ˋ(localBigDecimalPolynomial3);
    localObject2 = ((BigDecimalPolynomial)localObject2).ˋ(localBigDecimalPolynomial1);
    ((BigDecimalPolynomial)localObject2).ˏ(paramBigDecimalPolynomial);
    ((BigDecimalPolynomial)localObject2).ˏ((BigDecimalPolynomial)localObject1);
    localBigDecimalPolynomial1 = new BigDecimalPolynomial(i * 2 - 1);
    i = 0;
    while (i < paramBigDecimalPolynomial.bjy.length)
    {
      localBigDecimalPolynomial1.bjy[i] = paramBigDecimalPolynomial.bjy[i];
      i += 1;
    }
    i = 0;
    while (i < ((BigDecimalPolynomial)localObject2).bjy.length)
    {
      localBigDecimalPolynomial1.bjy[(j + i)] = localBigDecimalPolynomial1.bjy[(j + i)].add(localObject2.bjy[i]);
      i += 1;
    }
    i = 0;
    while (i < ((BigDecimalPolynomial)localObject1).bjy.length)
    {
      localBigDecimalPolynomial1.bjy[(j * 2 + i)] = localBigDecimalPolynomial1.bjy[(j * 2 + i)].add(localObject1.bjy[i]);
      i += 1;
    }
    return localBigDecimalPolynomial1;
  }
  
  public Object clone()
  {
    return new BigDecimalPolynomial((BigDecimal[])this.bjy.clone());
  }
  
  public void sK()
  {
    int i = 0;
    while (i < this.bjy.length)
    {
      this.bjy[i] = this.bjy[i].multiply(bjx);
      i += 1;
    }
  }
  
  public BigIntPolynomial sL()
  {
    int j = this.bjy.length;
    BigIntPolynomial localBigIntPolynomial = new BigIntPolynomial(j);
    int i = 0;
    while (i < j)
    {
      localBigIntPolynomial.bjA[i] = this.bjy[i].setScale(0, 6).toBigInteger();
      i += 1;
    }
    return localBigIntPolynomial;
  }
  
  public BigDecimalPolynomial ˊ(BigDecimalPolynomial paramBigDecimalPolynomial)
  {
    int j = this.bjy.length;
    if (paramBigDecimalPolynomial.bjy.length != j) {
      throw new IllegalArgumentException("Number of coefficients must be the same");
    }
    paramBigDecimalPolynomial = ˋ(paramBigDecimalPolynomial);
    if (paramBigDecimalPolynomial.bjy.length > j)
    {
      int i = j;
      while (i < paramBigDecimalPolynomial.bjy.length)
      {
        paramBigDecimalPolynomial.bjy[(i - j)] = paramBigDecimalPolynomial.bjy[(i - j)].add(paramBigDecimalPolynomial.bjy[i]);
        i += 1;
      }
      paramBigDecimalPolynomial.bjy = ˊ(paramBigDecimalPolynomial.bjy, j);
    }
    return paramBigDecimalPolynomial;
  }
  
  public BigDecimalPolynomial ˊ(BigIntPolynomial paramBigIntPolynomial)
  {
    return ˊ(new BigDecimalPolynomial(paramBigIntPolynomial));
  }
  
  public void ˎ(BigDecimalPolynomial paramBigDecimalPolynomial)
  {
    if (paramBigDecimalPolynomial.bjy.length > this.bjy.length)
    {
      i = this.bjy.length;
      this.bjy = ˊ(this.bjy, paramBigDecimalPolynomial.bjy.length);
      while (i < this.bjy.length)
      {
        this.bjy[i] = ZERO;
        i += 1;
      }
    }
    int i = 0;
    while (i < paramBigDecimalPolynomial.bjy.length)
    {
      this.bjy[i] = this.bjy[i].add(paramBigDecimalPolynomial.bjy[i]);
      i += 1;
    }
  }
  
  void ˏ(BigDecimalPolynomial paramBigDecimalPolynomial)
  {
    if (paramBigDecimalPolynomial.bjy.length > this.bjy.length)
    {
      i = this.bjy.length;
      this.bjy = ˊ(this.bjy, paramBigDecimalPolynomial.bjy.length);
      while (i < this.bjy.length)
      {
        this.bjy[i] = ZERO;
        i += 1;
      }
    }
    int i = 0;
    while (i < paramBigDecimalPolynomial.bjy.length)
    {
      this.bjy[i] = this.bjy[i].subtract(paramBigDecimalPolynomial.bjy[i]);
      i += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.BigDecimalPolynomial
 * JD-Core Version:    0.7.0.1
 */