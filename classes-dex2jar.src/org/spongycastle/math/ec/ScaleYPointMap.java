package org.spongycastle.math.ec;

public class ScaleYPointMap
  implements ECPointMap
{
  protected final ECFieldElement bcQ;
  
  public ECPoint ͺ(ECPoint paramECPoint)
  {
    return paramECPoint.ʾ(this.bcQ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ScaleYPointMap
 * JD-Core Version:    0.7.0.1
 */