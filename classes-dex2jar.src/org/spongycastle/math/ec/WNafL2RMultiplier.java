package org.spongycastle.math.ec;

import java.math.BigInteger;

public class WNafL2RMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    int k = Math.max(2, Math.min(16, ﾌ(paramBigInteger.bitLength())));
    Object localObject = WNafUtil.ˊ(paramECPoint, k, true);
    ECPoint[] arrayOfECPoint = ((WNafPreCompInfo)localObject).pY();
    localObject = ((WNafPreCompInfo)localObject).qg();
    int[] arrayOfInt = WNafUtil.ˎ(k, paramBigInteger);
    paramECPoint = paramECPoint.iv().pi();
    int j = arrayOfInt.length;
    int i = j;
    int m;
    if (j > 1)
    {
      j -= 1;
      i = arrayOfInt[j];
      int n = i >> 16;
      i &= 0xFFFF;
      m = Math.abs(n);
      if (n < 0) {
        paramECPoint = (ECPoint)localObject;
      } else {
        paramECPoint = arrayOfECPoint;
      }
      if (m << 2 < 1 << k)
      {
        n = LongArray.bcM[m];
        int i1 = k - n;
        paramECPoint = paramECPoint[((1 << k - 1) - 1 >>> 1)].ʼ(paramECPoint[(((m ^ 1 << n - 1) << i1) + 1 >>> 1)]);
        i -= i1;
      }
      else
      {
        paramECPoint = paramECPoint[(m >>> 1)];
      }
      paramECPoint = paramECPoint.ﺬ(i);
      i = j;
    }
    while (i > 0)
    {
      i -= 1;
      j = arrayOfInt[i];
      k = j >> 16;
      m = Math.abs(k);
      if (k < 0) {
        paramBigInteger = (BigInteger)localObject;
      } else {
        paramBigInteger = arrayOfECPoint;
      }
      paramECPoint = paramECPoint.ʽ(paramBigInteger[(m >>> 1)]).ﺬ(j & 0xFFFF);
    }
    return paramECPoint;
  }
  
  protected int ﾌ(int paramInt)
  {
    return WNafUtil.ﾌ(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.WNafL2RMultiplier
 * JD-Core Version:    0.7.0.1
 */