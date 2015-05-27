package org.spongycastle.math.ec;

import java.math.BigInteger;

public class FixedPointCombMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    ECCurve localECCurve = paramECPoint.iv();
    int i = FixedPointUtil.ͺ(localECCurve);
    if (paramBigInteger.bitLength() > i) {
      throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
    }
    paramECPoint = FixedPointUtil.ˊ(paramECPoint, ﺯ(i));
    ECPoint[] arrayOfECPoint = paramECPoint.pY();
    int n = paramECPoint.getWidth();
    int i1 = (i + n - 1) / n;
    paramECPoint = localECCurve.pi();
    int j = 0;
    while (j < i1)
    {
      i = 0;
      int k = i1 * n - 1 - j;
      while (k >= 0)
      {
        int m = i << 1;
        i = m;
        if (paramBigInteger.testBit(k)) {
          i = m | 0x1;
        }
        k -= i1;
      }
      paramECPoint = paramECPoint.ʽ(arrayOfECPoint[i]);
      j += 1;
    }
    return paramECPoint;
  }
  
  protected int ﺯ(int paramInt)
  {
    if (paramInt > 257) {
      return 6;
    }
    return 5;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.FixedPointCombMultiplier
 * JD-Core Version:    0.7.0.1
 */