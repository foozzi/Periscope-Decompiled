package org.spongycastle.pqc.math.ntru.euclid;

import java.math.BigInteger;

public class BigIntEuclidean
{
  public BigInteger aFO;
  public BigInteger aPZ;
  public BigInteger bjv;
  
  public static BigIntEuclidean ͺ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    BigInteger localBigInteger2 = BigInteger.ZERO;
    BigInteger localBigInteger1 = BigInteger.ONE;
    Object localObject1 = BigInteger.ONE;
    Object localObject2 = BigInteger.ZERO;
    Object localObject3 = paramBigInteger1;
    paramBigInteger1 = localBigInteger2;
    while (!paramBigInteger2.equals(BigInteger.ZERO))
    {
      localObject3 = ((BigInteger)localObject3).divideAndRemainder(paramBigInteger2);
      BigInteger localBigInteger3 = localObject3[0];
      localBigInteger2 = localObject3[1];
      localObject3 = localBigInteger1.subtract(localBigInteger3.multiply(paramBigInteger1));
      localBigInteger1 = paramBigInteger1;
      localBigInteger3 = ((BigInteger)localObject2).subtract(localBigInteger3.multiply((BigInteger)localObject1));
      localObject2 = localObject1;
      paramBigInteger1 = (BigInteger)localObject3;
      localObject1 = localBigInteger3;
      localObject3 = paramBigInteger2;
      paramBigInteger2 = localBigInteger2;
    }
    paramBigInteger1 = new BigIntEuclidean();
    paramBigInteger1.aFO = localBigInteger1;
    paramBigInteger1.aPZ = ((BigInteger)localObject2);
    paramBigInteger1.bjv = ((BigInteger)localObject3);
    return paramBigInteger1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.euclid.BigIntEuclidean
 * JD-Core Version:    0.7.0.1
 */