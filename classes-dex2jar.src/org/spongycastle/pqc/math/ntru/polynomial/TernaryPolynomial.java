package org.spongycastle.pqc.math.ntru.polynomial;

public abstract interface TernaryPolynomial
  extends Polynomial
{
  public abstract int[] sP();
  
  public abstract int[] sQ();
  
  public abstract int size();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.TernaryPolynomial
 * JD-Core Version:    0.7.0.1
 */