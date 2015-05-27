package org.spongycastle.math.ec;

import java.math.BigInteger;

public abstract class AbstractECMultiplier
  implements ECMultiplier
{
  public ECPoint ˋ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    int i = paramBigInteger.signum();
    if ((i == 0) || (paramECPoint.pR())) {
      return paramECPoint.iv().pi();
    }
    paramECPoint = ˎ(paramECPoint, paramBigInteger.abs());
    if (i <= 0) {
      paramECPoint = paramECPoint.pT();
    }
    return ECAlgorithms.ˎ(paramECPoint);
  }
  
  protected abstract ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.AbstractECMultiplier
 * JD-Core Version:    0.7.0.1
 */