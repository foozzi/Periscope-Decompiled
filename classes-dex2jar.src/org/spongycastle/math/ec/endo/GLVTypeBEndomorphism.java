package org.spongycastle.math.ec.endo;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPointMap;
import org.spongycastle.math.ec.ScaleXPointMap;

public class GLVTypeBEndomorphism
  implements GLVEndomorphism
{
  protected final ECCurve aDw;
  protected final GLVTypeBParameters bdr;
  protected final ECPointMap bds;
  
  public GLVTypeBEndomorphism(ECCurve paramECCurve, GLVTypeBParameters paramGLVTypeBParameters)
  {
    this.aDw = paramECCurve;
    this.bdr = paramGLVTypeBParameters;
    this.bds = new ScaleXPointMap(paramECCurve.ι(paramGLVTypeBParameters.qm()));
  }
  
  public ECPointMap qk()
  {
    return this.bds;
  }
  
  public boolean ql()
  {
    return true;
  }
  
  protected BigInteger ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, int paramInt)
  {
    int i;
    if (paramBigInteger2.signum() < 0) {
      i = 1;
    } else {
      i = 0;
    }
    paramBigInteger1 = paramBigInteger1.multiply(paramBigInteger2.abs());
    boolean bool = paramBigInteger1.testBit(paramInt - 1);
    paramBigInteger2 = paramBigInteger1.shiftRight(paramInt);
    paramBigInteger1 = paramBigInteger2;
    if (bool) {
      paramBigInteger1 = paramBigInteger2.add(ECConstants.ONE);
    }
    if (i != 0) {
      return paramBigInteger1.negate();
    }
    return paramBigInteger1;
  }
  
  public BigInteger[] ﾞ(BigInteger paramBigInteger)
  {
    int i = this.bdr.qp();
    BigInteger localBigInteger1 = ˊ(paramBigInteger, this.bdr.kr(), i);
    BigInteger localBigInteger2 = ˊ(paramBigInteger, this.bdr.ks(), i);
    BigInteger[] arrayOfBigInteger1 = this.bdr.qn();
    BigInteger[] arrayOfBigInteger2 = this.bdr.qo();
    return new BigInteger[] { paramBigInteger.subtract(localBigInteger1.multiply(arrayOfBigInteger1[0]).add(localBigInteger2.multiply(arrayOfBigInteger2[0]))), localBigInteger1.multiply(arrayOfBigInteger1[1]).add(localBigInteger2.multiply(arrayOfBigInteger2[1])).negate() };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.endo.GLVTypeBEndomorphism
 * JD-Core Version:    0.7.0.1
 */