package org.spongycastle.crypto.prng.drbg;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

public class DualECPoints
{
  private final ECPoint aDE;
  private final int aRf;
  private final ECPoint aRv;
  private final int aRw;
  
  public DualECPoints(int paramInt1, ECPoint paramECPoint1, ECPoint paramECPoint2, int paramInt2)
  {
    if (!paramECPoint1.iv().ʼ(paramECPoint2.iv())) {
      throw new IllegalArgumentException("points need to be on the same curve");
    }
    this.aRf = paramInt1;
    this.aDE = paramECPoint1;
    this.aRv = paramECPoint2;
    this.aRw = paramInt2;
  }
  
  private static int Γ(int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    for (;;)
    {
      j = i >> 1;
      i = j;
      if (j == 0) {
        break;
      }
      paramInt += 1;
    }
    return paramInt;
  }
  
  public ECPoint kH()
  {
    return this.aRv;
  }
  
  public int lw()
  {
    return this.aDE.iv().getFieldSize();
  }
  
  public int lx()
  {
    return (this.aDE.iv().getFieldSize() - (Γ(this.aRw) + 13)) / 8 * 8;
  }
  
  public ECPoint ly()
  {
    return this.aDE;
  }
  
  public int lz()
  {
    return this.aRf;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.drbg.DualECPoints
 * JD-Core Version:    0.7.0.1
 */