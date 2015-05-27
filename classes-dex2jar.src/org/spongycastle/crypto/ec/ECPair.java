package org.spongycastle.crypto.ec;

import org.spongycastle.math.ec.ECPoint;

public class ECPair
{
  private final ECPoint aIo;
  private final ECPoint aIp;
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ECPair)) {
      return ˊ((ECPair)paramObject);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.aIo.hashCode() + this.aIp.hashCode() * 37;
  }
  
  public ECPoint jl()
  {
    return this.aIo;
  }
  
  public ECPoint jm()
  {
    return this.aIp;
  }
  
  public boolean ˊ(ECPair paramECPair)
  {
    return (paramECPair.jl().ʻ(jl())) && (paramECPair.jm().ʻ(jm()));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.ECPair
 * JD-Core Version:    0.7.0.1
 */