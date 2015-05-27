package org.spongycastle.math.ec;

public class WNafPreCompInfo
  implements PreCompInfo
{
  protected ECPoint[] bcF = null;
  protected ECPoint[] bda = null;
  protected ECPoint bdb = null;
  
  public ECPoint[] pY()
  {
    return this.bcF;
  }
  
  public ECPoint[] qg()
  {
    return this.bda;
  }
  
  public ECPoint qh()
  {
    return this.bdb;
  }
  
  public void ˎ(ECPoint[] paramArrayOfECPoint)
  {
    this.bcF = paramArrayOfECPoint;
  }
  
  public void ˏ(ECPoint[] paramArrayOfECPoint)
  {
    this.bda = paramArrayOfECPoint;
  }
  
  public void ι(ECPoint paramECPoint)
  {
    this.bdb = paramECPoint;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.WNafPreCompInfo
 * JD-Core Version:    0.7.0.1
 */