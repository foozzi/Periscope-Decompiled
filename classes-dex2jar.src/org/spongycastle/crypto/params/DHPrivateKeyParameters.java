package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class DHPrivateKeyParameters
  extends DHKeyParameters
{
  private BigInteger aFO;
  
  public DHPrivateKeyParameters(BigInteger paramBigInteger, DHParameters paramDHParameters)
  {
    super(true, paramDHParameters);
    this.aFO = paramBigInteger;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DHPrivateKeyParameters)) {
      return false;
    }
    return (((DHPrivateKeyParameters)paramObject).getX().equals(this.aFO)) && (super.equals(paramObject));
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
  
  public int hashCode()
  {
    return this.aFO.hashCode() ^ super.hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DHPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */