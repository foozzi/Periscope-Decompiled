package org.spongycastle.jce.spec;

import org.spongycastle.math.ec.ECPoint;

public class ECPublicKeySpec
  extends ECKeySpec
{
  private ECPoint aRv;
  
  public ECPublicKeySpec(ECPoint paramECPoint, ECParameterSpec paramECParameterSpec)
  {
    super(paramECParameterSpec);
    if (paramECPoint.iv() != null)
    {
      this.aRv = paramECPoint.pQ();
      return;
    }
    this.aRv = paramECPoint;
  }
  
  public ECPoint kH()
  {
    return this.aRv;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ECPublicKeySpec
 * JD-Core Version:    0.7.0.1
 */