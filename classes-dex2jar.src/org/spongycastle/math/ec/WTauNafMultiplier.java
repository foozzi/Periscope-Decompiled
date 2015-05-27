package org.spongycastle.math.ec;

import java.math.BigInteger;

public class WTauNafMultiplier
  extends AbstractECMultiplier
{
  private ECPoint.F2m ˊ(ECPoint.F2m paramF2m, ZTauElement paramZTauElement, PreCompInfo paramPreCompInfo, byte paramByte1, byte paramByte2)
  {
    ZTauElement[] arrayOfZTauElement;
    if (paramByte1 == 0) {
      arrayOfZTauElement = Tnaf.bcW;
    } else {
      arrayOfZTauElement = Tnaf.bcY;
    }
    BigInteger localBigInteger = Tnaf.ˏ(paramByte2, 4);
    return ˊ(paramF2m, Tnaf.ˊ(paramByte2, paramZTauElement, (byte)4, BigInteger.valueOf(16L), localBigInteger, arrayOfZTauElement), paramPreCompInfo);
  }
  
  private static ECPoint.F2m ˊ(ECPoint.F2m paramF2m, byte[] paramArrayOfByte, PreCompInfo paramPreCompInfo)
  {
    Object localObject = (ECCurve.F2m)paramF2m.iv();
    byte b = ((ECCurve.F2m)localObject).pk().toBigInteger().byteValue();
    if ((paramPreCompInfo == null) || (!(paramPreCompInfo instanceof WTauNafPreCompInfo)))
    {
      paramPreCompInfo = Tnaf.ˊ(paramF2m, b);
      WTauNafPreCompInfo localWTauNafPreCompInfo = new WTauNafPreCompInfo();
      localWTauNafPreCompInfo.ˊ(paramPreCompInfo);
      ((ECCurve.F2m)localObject).ˊ(paramF2m, "bc_wtnaf", localWTauNafPreCompInfo);
    }
    else
    {
      paramPreCompInfo = ((WTauNafPreCompInfo)paramPreCompInfo).qi();
    }
    paramF2m = (ECPoint.F2m)paramF2m.iv().pi();
    int i = paramArrayOfByte.length - 1;
    while (i >= 0)
    {
      localObject = Tnaf.ˎ(paramF2m);
      int j = paramArrayOfByte[i];
      paramF2m = (ECPoint.F2m)localObject;
      if (j != 0) {
        if (j > 0) {
          paramF2m = ((ECPoint.F2m)localObject).ˊ(paramPreCompInfo[j]);
        } else {
          paramF2m = ((ECPoint.F2m)localObject).ˋ(paramPreCompInfo[(-j)]);
        }
      }
      i -= 1;
    }
    return paramF2m;
  }
  
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    if (!(paramECPoint instanceof ECPoint.F2m)) {
      throw new IllegalArgumentException("Only ECPoint.F2m can be used in WTauNafMultiplier");
    }
    paramECPoint = (ECPoint.F2m)paramECPoint;
    ECCurve.F2m localF2m = (ECCurve.F2m)paramECPoint.iv();
    int i = localF2m.getM();
    byte b1 = localF2m.pk().toBigInteger().byteValue();
    byte b2 = localF2m.ps();
    return ˊ(paramECPoint, Tnaf.ˊ(paramBigInteger, i, b1, localF2m.pt(), b2, (byte)10), localF2m.ˊ(paramECPoint, "bc_wtnaf"), b1, b2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.WTauNafMultiplier
 * JD-Core Version:    0.7.0.1
 */