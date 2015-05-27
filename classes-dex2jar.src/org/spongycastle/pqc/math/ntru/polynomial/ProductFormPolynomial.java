package org.spongycastle.pqc.math.ntru.polynomial;

import java.security.SecureRandom;

public class ProductFormPolynomial
  implements Polynomial
{
  private SparseTernaryPolynomial bjN;
  private SparseTernaryPolynomial bjO;
  private SparseTernaryPolynomial bjP;
  
  public ProductFormPolynomial(SparseTernaryPolynomial paramSparseTernaryPolynomial1, SparseTernaryPolynomial paramSparseTernaryPolynomial2, SparseTernaryPolynomial paramSparseTernaryPolynomial3)
  {
    this.bjN = paramSparseTernaryPolynomial1;
    this.bjO = paramSparseTernaryPolynomial2;
    this.bjP = paramSparseTernaryPolynomial3;
  }
  
  public static ProductFormPolynomial ˊ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, SecureRandom paramSecureRandom)
  {
    return new ProductFormPolynomial(SparseTernaryPolynomial.ˋ(paramInt1, paramInt2, paramInt2, paramSecureRandom), SparseTernaryPolynomial.ˋ(paramInt1, paramInt3, paramInt3, paramSecureRandom), SparseTernaryPolynomial.ˋ(paramInt1, paramInt4, paramInt5, paramSecureRandom));
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
    paramObject = (ProductFormPolynomial)paramObject;
    if (this.bjN == null)
    {
      if (paramObject.bjN != null) {
        return false;
      }
    }
    else if (!this.bjN.equals(paramObject.bjN)) {
      return false;
    }
    if (this.bjO == null)
    {
      if (paramObject.bjO != null) {
        return false;
      }
    }
    else if (!this.bjO.equals(paramObject.bjO)) {
      return false;
    }
    if (this.bjP == null)
    {
      if (paramObject.bjP != null) {
        return false;
      }
    }
    else if (!this.bjP.equals(paramObject.bjP)) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    int i;
    if (this.bjN == null) {
      i = 0;
    } else {
      i = this.bjN.hashCode();
    }
    int j;
    if (this.bjO == null) {
      j = 0;
    } else {
      j = this.bjO.hashCode();
    }
    int k;
    if (this.bjP == null) {
      k = 0;
    } else {
      k = this.bjP.hashCode();
    }
    return ((i + 31) * 31 + j) * 31 + k;
  }
  
  public IntegerPolynomial ta()
  {
    IntegerPolynomial localIntegerPolynomial = this.bjN.ˊ(this.bjO.ta());
    localIntegerPolynomial.ˎ(this.bjP.ta());
    return localIntegerPolynomial;
  }
  
  public IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial)
  {
    IntegerPolynomial localIntegerPolynomial = this.bjN.ˊ(paramIntegerPolynomial);
    localIntegerPolynomial = this.bjO.ˊ(localIntegerPolynomial);
    localIntegerPolynomial.ˎ(this.bjP.ˊ(paramIntegerPolynomial));
    return localIntegerPolynomial;
  }
  
  public IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial, int paramInt)
  {
    paramIntegerPolynomial = ˊ(paramIntegerPolynomial);
    paramIntegerPolynomial.〳(paramInt);
    return paramIntegerPolynomial;
  }
  
  public BigIntPolynomial ˋ(BigIntPolynomial paramBigIntPolynomial)
  {
    BigIntPolynomial localBigIntPolynomial = this.bjN.ˋ(paramBigIntPolynomial);
    localBigIntPolynomial = this.bjO.ˋ(localBigIntPolynomial);
    localBigIntPolynomial.ˏ(this.bjP.ˋ(paramBigIntPolynomial));
    return localBigIntPolynomial;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.ProductFormPolynomial
 * JD-Core Version:    0.7.0.1
 */