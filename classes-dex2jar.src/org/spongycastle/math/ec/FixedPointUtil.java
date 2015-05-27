package org.spongycastle.math.ec;

import java.math.BigInteger;

public class FixedPointUtil
{
  public static FixedPointPreCompInfo ˊ(ECPoint paramECPoint, int paramInt)
  {
    ECCurve localECCurve = paramECPoint.iv();
    int m = 1 << paramInt;
    FixedPointPreCompInfo localFixedPointPreCompInfo = ˊ(localECCurve.ˊ(paramECPoint, "bc_fixed_point"));
    ECPoint[] arrayOfECPoint1 = localFixedPointPreCompInfo.pY();
    if ((arrayOfECPoint1 == null) || (arrayOfECPoint1.length < m))
    {
      int j = (ͺ(localECCurve) + paramInt - 1) / paramInt;
      arrayOfECPoint1 = new ECPoint[paramInt];
      arrayOfECPoint1[0] = paramECPoint;
      int i = 1;
      while (i < paramInt)
      {
        arrayOfECPoint1[i] = arrayOfECPoint1[(i - 1)].ﺬ(j);
        i += 1;
      }
      localECCurve.ˊ(arrayOfECPoint1);
      ECPoint[] arrayOfECPoint2 = new ECPoint[m];
      arrayOfECPoint2[0] = localECCurve.pi();
      i = paramInt - 1;
      while (i >= 0)
      {
        ECPoint localECPoint = arrayOfECPoint1[i];
        int k = 1 << i;
        j = k;
        while (j < m)
        {
          arrayOfECPoint2[j] = arrayOfECPoint2[(j - k)].ʼ(localECPoint);
          j += (k << 1);
        }
        i -= 1;
      }
      localECCurve.ˊ(arrayOfECPoint2);
      localFixedPointPreCompInfo.ˎ(arrayOfECPoint2);
      localFixedPointPreCompInfo.setWidth(paramInt);
      localECCurve.ˊ(paramECPoint, "bc_fixed_point", localFixedPointPreCompInfo);
    }
    return localFixedPointPreCompInfo;
  }
  
  public static FixedPointPreCompInfo ˊ(PreCompInfo paramPreCompInfo)
  {
    if ((paramPreCompInfo != null) && ((paramPreCompInfo instanceof FixedPointPreCompInfo))) {
      return (FixedPointPreCompInfo)paramPreCompInfo;
    }
    return new FixedPointPreCompInfo();
  }
  
  public static int ͺ(ECCurve paramECCurve)
  {
    BigInteger localBigInteger = paramECCurve.getOrder();
    if (localBigInteger == null) {
      return paramECCurve.getFieldSize() + 1;
    }
    return localBigInteger.bitLength();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.FixedPointUtil
 * JD-Core Version:    0.7.0.1
 */