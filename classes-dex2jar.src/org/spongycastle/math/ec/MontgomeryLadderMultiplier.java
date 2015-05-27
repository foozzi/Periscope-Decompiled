package org.spongycastle.math.ec;

import java.math.BigInteger;

public class MontgomeryLadderMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    ECPoint[] arrayOfECPoint = new ECPoint[2];
    arrayOfECPoint[0] = paramECPoint.iv().pi();
    arrayOfECPoint[1] = paramECPoint;
    int j;
    for (int i = paramBigInteger.bitLength();; i = j)
    {
      j = i - 1;
      if (j < 0) {
        break;
      }
      if (paramBigInteger.testBit(j)) {
        i = 1;
      } else {
        i = 0;
      }
      int k = 1 - i;
      arrayOfECPoint[k] = arrayOfECPoint[k].ʼ(arrayOfECPoint[i]);
      arrayOfECPoint[i] = arrayOfECPoint[i].pU();
    }
    return arrayOfECPoint[0];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.MontgomeryLadderMultiplier
 * JD-Core Version:    0.7.0.1
 */