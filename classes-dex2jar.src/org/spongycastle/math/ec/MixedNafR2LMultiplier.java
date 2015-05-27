package org.spongycastle.math.ec;

import java.math.BigInteger;

public class MixedNafR2LMultiplier
  extends AbstractECMultiplier
{
  protected int bcO;
  protected int bcP;
  
  public MixedNafR2LMultiplier()
  {
    this(2, 4);
  }
  
  public MixedNafR2LMultiplier(int paramInt1, int paramInt2)
  {
    this.bcO = paramInt1;
    this.bcP = paramInt2;
  }
  
  protected ECCurve ˊ(ECCurve paramECCurve, int paramInt)
  {
    if (paramECCurve.pn() == paramInt) {
      return paramECCurve;
    }
    if (!paramECCurve.ﭨ(paramInt)) {
      throw new IllegalArgumentException("Coordinate system " + paramInt + " not supported by this curve");
    }
    return paramECCurve.pf().ﮢ(paramInt).pq();
  }
  
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    ECCurve localECCurve1 = paramECPoint.iv();
    ECCurve localECCurve2 = ˊ(localECCurve1, this.bcO);
    Object localObject = ˊ(localECCurve1, this.bcP);
    int[] arrayOfInt = WNafUtil.ـ(paramBigInteger);
    ECPoint localECPoint = localECCurve2.pi();
    paramBigInteger = ((ECCurve)localObject).ˏ(paramECPoint);
    int j = 0;
    int i = 0;
    paramECPoint = localECPoint;
    while (i < arrayOfInt.length)
    {
      int k = arrayOfInt[i];
      localECPoint = paramBigInteger.ﺬ(j + (0xFFFF & k));
      localObject = localECCurve2.ˏ(localECPoint);
      paramBigInteger = (BigInteger)localObject;
      if (k >> 16 < 0) {
        paramBigInteger = ((ECPoint)localObject).pT();
      }
      paramECPoint = paramECPoint.ʼ(paramBigInteger);
      j = 1;
      i += 1;
      paramBigInteger = localECPoint;
    }
    return localECCurve1.ˏ(paramECPoint);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.MixedNafR2LMultiplier
 * JD-Core Version:    0.7.0.1
 */