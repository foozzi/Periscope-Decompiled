package org.spongycastle.pqc.math.ntru.polynomial;

import java.math.BigInteger;
import org.spongycastle.pqc.math.ntru.euclid.BigIntEuclidean;

public class ModularResultant
  extends Resultant
{
  BigInteger ajI;
  
  ModularResultant(BigIntPolynomial paramBigIntPolynomial, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    super(paramBigIntPolynomial, paramBigInteger1);
    this.ajI = paramBigInteger2;
  }
  
  static ModularResultant ˊ(ModularResultant paramModularResultant1, ModularResultant paramModularResultant2)
  {
    BigInteger localBigInteger1 = paramModularResultant1.ajI;
    BigInteger localBigInteger3 = paramModularResultant2.ajI;
    BigInteger localBigInteger2 = localBigInteger1.multiply(localBigInteger3);
    BigIntEuclidean localBigIntEuclidean = BigIntEuclidean.ͺ(localBigInteger3, localBigInteger1);
    paramModularResultant1 = (BigIntPolynomial)paramModularResultant1.bjQ.clone();
    paramModularResultant1.י(localBigIntEuclidean.aFO.multiply(localBigInteger3));
    paramModularResultant2 = (BigIntPolynomial)paramModularResultant2.bjQ.clone();
    paramModularResultant2.י(localBigIntEuclidean.aPZ.multiply(localBigInteger1));
    paramModularResultant1.ˏ(paramModularResultant2);
    paramModularResultant1.ᴵ(localBigInteger2);
    return new ModularResultant(paramModularResultant1, null, localBigInteger2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.ModularResultant
 * JD-Core Version:    0.7.0.1
 */