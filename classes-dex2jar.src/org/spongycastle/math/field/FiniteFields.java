package org.spongycastle.math.field;

import java.math.BigInteger;

public abstract class FiniteFields
{
  static final FiniteField bdx = new PrimeField(BigInteger.valueOf(2L));
  static final FiniteField bdy = new PrimeField(BigInteger.valueOf(3L));
  
  public static FiniteField ʹ(BigInteger paramBigInteger)
  {
    int i = paramBigInteger.bitLength();
    if ((paramBigInteger.signum() <= 0) || (i < 2)) {
      throw new IllegalArgumentException("'characteristic' must be >= 2");
    }
    if (i < 3) {
      switch (paramBigInteger.intValue())
      {
      default: 
        break;
      case 2: 
        return bdx;
      case 3: 
        return bdy;
      }
    }
    return new PrimeField(paramBigInteger);
  }
  
  public static PolynomialExtensionField ـ(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt[0] != 0) {
      throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
    }
    int i = 1;
    while (i < paramArrayOfInt.length)
    {
      if (paramArrayOfInt[i] <= paramArrayOfInt[(i - 1)]) {
        throw new IllegalArgumentException("Polynomial exponents must be montonically increasing");
      }
      i += 1;
    }
    return new GenericPolynomialExtensionField(bdx, new GF2Polynomial(paramArrayOfInt));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.field.FiniteFields
 * JD-Core Version:    0.7.0.1
 */