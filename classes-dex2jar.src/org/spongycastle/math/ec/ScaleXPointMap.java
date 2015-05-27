package org.spongycastle.math.ec;

public class ScaleXPointMap
  implements ECPointMap
{
  protected final ECFieldElement bcQ;
  
  public ScaleXPointMap(ECFieldElement paramECFieldElement)
  {
    this.bcQ = paramECFieldElement;
  }
  
  public ECPoint ͺ(ECPoint paramECPoint)
  {
    return paramECPoint.ι(this.bcQ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ScaleXPointMap
 * JD-Core Version:    0.7.0.1
 */