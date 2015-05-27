package org.spongycastle.math.ec;

public class FixedPointPreCompInfo
  implements PreCompInfo
{
  protected ECPoint[] bcF = null;
  protected int width = -1;
  
  public int getWidth()
  {
    return this.width;
  }
  
  public ECPoint[] pY()
  {
    return this.bcF;
  }
  
  public void setWidth(int paramInt)
  {
    this.width = paramInt;
  }
  
  public void ˎ(ECPoint[] paramArrayOfECPoint)
  {
    this.bcF = paramArrayOfECPoint;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.FixedPointPreCompInfo
 * JD-Core Version:    0.7.0.1
 */