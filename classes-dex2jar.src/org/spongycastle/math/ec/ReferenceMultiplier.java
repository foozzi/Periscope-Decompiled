package org.spongycastle.math.ec;

import java.math.BigInteger;

public class ReferenceMultiplier
  extends AbstractECMultiplier
{
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    return ECAlgorithms.ˏ(paramECPoint, paramBigInteger);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ReferenceMultiplier
 * JD-Core Version:    0.7.0.1
 */