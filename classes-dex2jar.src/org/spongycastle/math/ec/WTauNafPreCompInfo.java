package org.spongycastle.math.ec;

public class WTauNafPreCompInfo
  implements PreCompInfo
{
  protected ECPoint.F2m[] bdd = null;
  
  public ECPoint.F2m[] qi()
  {
    return this.bdd;
  }
  
  public void ˊ(ECPoint.F2m[] paramArrayOfF2m)
  {
    this.bdd = paramArrayOfF2m;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.WTauNafPreCompInfo
 * JD-Core Version:    0.7.0.1
 */