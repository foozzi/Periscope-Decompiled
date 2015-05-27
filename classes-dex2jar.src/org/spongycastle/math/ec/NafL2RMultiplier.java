package org.spongycastle.math.ec;

import java.math.BigInteger;

public class NafL2RMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    int[] arrayOfInt = WNafUtil.ـ(paramBigInteger);
    ECPoint localECPoint1 = paramECPoint.pQ();
    ECPoint localECPoint2 = localECPoint1.pT();
    paramECPoint = paramECPoint.iv().pi();
    int i = arrayOfInt.length;
    for (;;)
    {
      i -= 1;
      if (i < 0) {
        break;
      }
      int j = arrayOfInt[i];
      if (j >> 16 < 0) {
        paramBigInteger = localECPoint2;
      } else {
        paramBigInteger = localECPoint1;
      }
      paramECPoint = paramECPoint.ʽ(paramBigInteger).ﺬ(j & 0xFFFF);
    }
    return paramECPoint;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.NafL2RMultiplier
 * JD-Core Version:    0.7.0.1
 */