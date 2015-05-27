package org.spongycastle.math.ec;

import java.math.BigInteger;
import org.spongycastle.math.ec.endo.GLVEndomorphism;

public class GLVMultiplier
  extends AbstractECMultiplier
{
  protected final ECCurve aDw;
  protected final GLVEndomorphism bcG;
  
  public GLVMultiplier(ECCurve paramECCurve, GLVEndomorphism paramGLVEndomorphism)
  {
    if ((paramECCurve == null) || (paramECCurve.getOrder() == null)) {
      throw new IllegalArgumentException("Need curve with known group order");
    }
    this.aDw = paramECCurve;
    this.bcG = paramGLVEndomorphism;
  }
  
  protected ECPoint ˎ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    if (!this.aDw.ʼ(paramECPoint.iv())) {
      throw new IllegalStateException();
    }
    Object localObject = paramECPoint.iv().getOrder();
    localObject = this.bcG.ﾞ(paramBigInteger.mod((BigInteger)localObject));
    paramBigInteger = localObject[0];
    localObject = localObject[1];
    ECPointMap localECPointMap = this.bcG.qk();
    if (this.bcG.ql()) {
      return ECAlgorithms.ˊ(paramECPoint, paramBigInteger, localECPointMap, (BigInteger)localObject);
    }
    return ECAlgorithms.ˋ(paramECPoint, paramBigInteger, localECPointMap.ͺ(paramECPoint), (BigInteger)localObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.GLVMultiplier
 * JD-Core Version:    0.7.0.1
 */