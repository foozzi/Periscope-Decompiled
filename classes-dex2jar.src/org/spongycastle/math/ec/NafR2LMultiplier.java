package org.spongycastle.math.ec;

import java.math.BigInteger;

public class NafR2LMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    int[] arrayOfInt = WNafUtil.ـ(paramBigInteger);
    Object localObject = paramECPoint.iv().pi();
    int j = 0;
    int i = 0;
    paramBigInteger = paramECPoint;
    paramECPoint = (ECPoint)localObject;
    while (i < arrayOfInt.length)
    {
      int k = arrayOfInt[i];
      paramBigInteger = paramBigInteger.ﺬ(j + (0xFFFF & k));
      if (k >> 16 < 0) {
        localObject = paramBigInteger.pT();
      } else {
        localObject = paramBigInteger;
      }
      paramECPoint = paramECPoint.ʼ((ECPoint)localObject);
      j = 1;
      i += 1;
    }
    return paramECPoint;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.NafR2LMultiplier
 * JD-Core Version:    0.7.0.1
 */