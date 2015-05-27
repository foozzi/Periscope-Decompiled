package org.spongycastle.math.ec;

import java.math.BigInteger;

public class DoubleAddMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    ECPoint[] arrayOfECPoint = new ECPoint[2];
    arrayOfECPoint[0] = paramECPoint.iv().pi();
    arrayOfECPoint[1] = paramECPoint;
    int k = paramBigInteger.bitLength();
    int i = 0;
    while (i < k)
    {
      int j;
      if (paramBigInteger.testBit(i)) {
        j = 1;
      } else {
        j = 0;
      }
      int m = 1 - j;
      arrayOfECPoint[m] = arrayOfECPoint[m].ʽ(arrayOfECPoint[j]);
      i += 1;
    }
    return arrayOfECPoint[0];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.DoubleAddMultiplier
 * JD-Core Version:    0.7.0.1
 */