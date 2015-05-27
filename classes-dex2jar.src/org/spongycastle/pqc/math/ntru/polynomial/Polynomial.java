package org.spongycastle.pqc.math.ntru.polynomial;

public abstract interface Polynomial
{
  public abstract IntegerPolynomial ta();
  
  public abstract IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial);
  
  public abstract IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial, int paramInt);
  
  public abstract BigIntPolynomial ˋ(BigIntPolynomial paramBigIntPolynomial);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.Polynomial
 * JD-Core Version:    0.7.0.1
 */