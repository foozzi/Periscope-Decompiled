package org.spongycastle.math.ec;

import java.math.BigInteger;

public class ZSignedDigitR2LMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    ECPoint localECPoint1 = paramECPoint.iv().pi();
    int j = paramBigInteger.bitLength();
    int i = paramBigInteger.getLowestSetBit();
    for (paramECPoint = paramECPoint.ﺬ(i);; paramECPoint = paramECPoint.pU())
    {
      i += 1;
      if (i >= j) {
        break;
      }
      ECPoint localECPoint2;
      if (paramBigInteger.testBit(i)) {
        localECPoint2 = paramECPoint;
      } else {
        localECPoint2 = paramECPoint.pT();
      }
      localECPoint1 = localECPoint1.ʼ(localECPoint2);
    }
    return localECPoint1.ʼ(paramECPoint);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ZSignedDigitR2LMultiplier
 * JD-Core Version:    0.7.0.1
 */