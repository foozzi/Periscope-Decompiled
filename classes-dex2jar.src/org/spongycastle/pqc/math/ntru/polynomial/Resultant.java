package org.spongycastle.pqc.math.ntru.polynomial;

import java.math.BigInteger;

public class Resultant
{
  public BigIntPolynomial bjQ;
  public BigInteger bjR;
  
  Resultant(BigIntPolynomial paramBigIntPolynomial, BigInteger paramBigInteger)
  {
    this.bjQ = paramBigIntPolynomial;
    this.bjR = paramBigInteger;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.Resultant
 * JD-Core Version:    0.7.0.1
 */