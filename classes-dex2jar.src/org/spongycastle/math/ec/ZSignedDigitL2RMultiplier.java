package org.spongycastle.math.ec;

import java.math.BigInteger;

public class ZSignedDigitL2RMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    paramECPoint = paramECPoint.pQ();
    ECPoint localECPoint3 = paramECPoint.pT();
    ECPoint localECPoint1 = paramECPoint;
    int i = paramBigInteger.bitLength();
    int j = paramBigInteger.getLowestSetBit();
    for (;;)
    {
      i -= 1;
      if (i <= j) {
        break;
      }
      ECPoint localECPoint2;
      if (paramBigInteger.testBit(i)) {
        localECPoint2 = paramECPoint;
      } else {
        localECPoint2 = localECPoint3;
      }
      localECPoint1 = localECPoint1.ʽ(localECPoint2);
    }
    return localECPoint1.ﺬ(j);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ZSignedDigitL2RMultiplier
 * JD-Core Version:    0.7.0.1
 */